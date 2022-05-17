// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:projects_archiving/blocs/projects_filter/projects_filter_bloc.dart';
// import 'package:projects_archiving/models/project.dart';
// import 'package:projects_archiving/utils/enums.dart';
// import 'package:projects_archiving/utils/strings.dart';
// import 'package:projects_archiving/view/widgets/app_button.dart';
// import 'package:projects_archiving/view/widgets/app_text_feild.dart';
// import 'package:projects_archiving/view/widgets/keywords_widget.dart';
// import 'package:projects_archiving/view/widgets/level_drop_dropdown.dart';

// class FilterDialog extends StatefulWidget {
//   const FilterDialog({
//     Key? key,
//     required this.onFilterChange,
//   }) : super(key: key);

//   final VoidCallback onFilterChange;

//   @override
//   State<FilterDialog> createState() => _FilterDialogState();
// }

// class _FilterDialogState extends State<FilterDialog> {
//   late ProjectsFilterBloc projectsF;

//   late TextEditingController nameC;
//   late TextEditingController studentNameC;
//   late TextEditingController supervisorNameC;
//   late TextEditingController yearC;
//   late TextEditingController abstractC;
//   late List<String> keyWords = [];
//   late Level? level;

//   @override
//   void initState() {
//     projectsF = BlocProvider.of<ProjectsFilterBloc>(context, listen: false);
//     reset();
//     super.initState();
//   }

//   void reset() {
//     nameC = TextEditingController(text: projectsF.state.filter.name);
//     studentNameC =
//         TextEditingController(text: projectsF.state.filter.studentName);
//     supervisorNameC =
//         TextEditingController(text: projectsF.state.filter.supervisorName);

//     yearC = TextEditingController(text: projectsF.state.filter.graduationYear);
//     abstractC = TextEditingController(text: projectsF.state.filter.abstract);
//     keyWords.addAll(projectsF.state.filter.keywords ?? []);
//     level = projectsF.state.filter.level;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: SingleChildScrollView(
//         child: Container(
//           constraints: const BoxConstraints(maxWidth: 500),
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               const SizedBox(height: 20),
//               AppTextField(
//                 lableText: Strings.projectName,
//                 controller: nameC,
//               ),
//               const SizedBox(height: 10),
//               AppTextField(
//                 lableText: Strings.studentName,
//                 controller: studentNameC,
//               ),
//               const SizedBox(height: 10),
//               AppTextField(
//                 lableText: Strings.supervisorName,
//                 controller: supervisorNameC,
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   Expanded(
//                     child: AppTextField(
//                       lableText: Strings.graduationYear,
//                       controller: yearC,
//                       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   AppLevelDropDown(
//                       selectedLevel: level,
//                       onLevelChanged: (l) => setState(() => level = l)),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               AppTextField(
//                 lableText: Strings.abstract,
//                 controller: abstractC,
//               ),
//               const SizedBox(height: 10),
//               KeyWordsWidget(
//                   onKeyWordAdded: (k) {
//                     setState(() => keyWords.add(k));
//                   },
//                   onkeyWordDeleted: (k) {
//                     setState(() => keyWords.remove(k));
//                   },
//                   keywords: keyWords),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   AppButton(
//                     onPressed: () {
//                       projectsF.updateFilter(ProjectsFilter(
//                         abstract: abstractC.text,
//                         graduationYear: yearC.text,
//                         keywords: keyWords,
//                         name: nameC.text,
//                         studentName: studentNameC.text,
//                         supervisorName: supervisorNameC.text,
//                         level: level,
//                       ));
//                       widget.onFilterChange();

//                       AutoRouter.of(context).pop();
//                     },
//                     text: 'حفظ الفلتر',
//                     textColor: Colors.black,
//                   ),
//                   const SizedBox(width: 10),
//                   AppButton(
//                     onPressed: () async {
//                       projectsF.add(const ProjectsFilterEvent.started());
//                       await Future.delayed(const Duration(seconds: 1));
//                       setState(() => reset());
//                     },
//                     text: Strings.filterReset,
//                     backroundColor: Colors.black,
//                     buttonType: ButtonType.secondary,
//                   ),
//                   const SizedBox(width: 10),
//                   AppButton(
//                     onPressed: () {
//                       projectsF.updateFilter(projectsF.state.filter);
//                       widget.onFilterChange();
//                       AutoRouter.of(context).pop();
//                     },
//                     text: Strings.cancel,
//                     buttonType: ButtonType.secondary,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
