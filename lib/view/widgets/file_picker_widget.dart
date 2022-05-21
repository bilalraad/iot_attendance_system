import 'package:desktop_drop/desktop_drop.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/utils/app_utils.dart';
import 'package:iot_attendance_system/utils/context_extensions.dart';
import 'package:iot_attendance_system/utils/enums.dart';
import 'package:iot_attendance_system/utils/strings.dart';
import 'package:iot_attendance_system/view/widgets/app_button.dart';

typedef FilePickerCallback = void Function(AppFile);

class FilePickerWidget extends StatelessWidget {
  final List<AppFile>? pickedFiles;
  final int filesLimit;
  final List<PickerFileTypes> fileTypes;
  final FilePickerCallback onFilesPicked;
  final FilePickerCallback onFileRemoved;

  const FilePickerWidget({
    Key? key,
    this.pickedFiles,
    required this.onFilesPicked,
    required this.onFileRemoved,
    this.fileTypes = PickerFileTypes.values,
    this.filesLimit = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropTarget(
          onDragDone: pickedFiles!.length >= filesLimit
              ? null
              : (detail) async {
                  await draggedFileTypeValidation(
                      filesDetails: detail,
                      selectedTypes: fileTypes,
                      onFileValidated: onFilesPicked,
                      context: context);
                },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).dividerColor),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
            margin: const EdgeInsets.all(10),
            constraints: const BoxConstraints(maxWidth: 990),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.cloud_upload_outlined, size: 80),
                Center(
                  child: Text(
                    Strings.dropFilesHere,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: AppButton(
                      width: 200,
                      buttonType: ButtonType.secondary,
                      onPressed: pickedFiles!.length >= filesLimit
                          ? null
                          : () async {
                              FilePickerResult? result =
                                  await FilePicker.platform.pickFiles(
                                      allowMultiple: false,
                                      type: FileType.custom,
                                      withData: true,
                                      allowedExtensions: fileTypes
                                          .map((e) => e.name)
                                          .toList());

                              if (result != null) {
                                for (var file in result.files) {
                                  final appFile = AppFile(
                                      bytes: file.bytes!, name: file.name);
                                  onFilesPicked(appFile);
                                }
                              } else {
                                // User canceled the picker
                              }
                            },
                      text: Strings.browseFiles),
                )
              ],
            ),
          ),
        ),
        Column(
          children: pickedFiles!
              .map((e) => PickedFileCard(
                    file: e,
                    onDeletePressed: () => onFileRemoved(e),
                  ))
              .toList(),
        )
      ],
    );
  }
}

class PickedFileCard extends StatelessWidget {
  const PickedFileCard(
      {Key? key, required this.file, required this.onDeletePressed})
      : super(key: key);

  final AppFile file;
  final VoidCallback onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      file.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      getFileSize(file.bytes.length, 2),
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: onDeletePressed,
                  icon: const Icon(Icons.delete, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}

// enum PickerFileTypes {
//   pdf,
//   word,
//   xlsx
// }

Future<void> draggedFileTypeValidation({
  required DropDoneDetails filesDetails,
  required List<PickerFileTypes> selectedTypes,
  required FilePickerCallback onFileValidated,
  required BuildContext context,
}) async {
  final files = filesDetails.files;
  for (var xFile in files) {
    final check =
        //pdf check
        (selectedTypes.contains(PickerFileTypes.pdf) &&
                (xFile.mimeType?.endsWith('/pdf') ?? false)) ||
            //word check
            ((selectedTypes.contains(PickerFileTypes.doc) ||
                    selectedTypes.contains(PickerFileTypes.docx)) &&
                ((xFile.mimeType?.endsWith('/msword') ?? false) ||
                    (xFile.mimeType?.endsWith(
                            '/vnd.openxmlformats-officedocument.wordprocessingml.document') ??
                        false))) ||
            (selectedTypes.contains(PickerFileTypes.xlsx) &&
                (xFile.mimeType?.endsWith(
                        'vnd.openxmlformats-officedocument.spreadsheetml.sheet') ??
                    false));

    if (check) {
      final file = AppFile(bytes: await xFile.readAsBytes(), name: xFile.name);
      onFileValidated(file);
    } else {
      context.showSnackBar(Strings.fileNotSupported, isError: true);
    }
  }
}
