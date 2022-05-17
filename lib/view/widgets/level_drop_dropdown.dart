// import 'package:flutter/material.dart';
// import 'package:projects_archiving/utils/enums.dart';
// import 'package:projects_archiving/utils/strings.dart';

// class AppLevelDropDown extends StatelessWidget {
//   const AppLevelDropDown(
//       {Key? key, required this.selectedLevel, required this.onLevelChanged})
//       : super(key: key);

//   final Level? selectedLevel;
//   final Function(Level?) onLevelChanged;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 160,
//       height: 70,
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//           border: Border.all(color: Theme.of(context).dividerColor),
//           borderRadius: BorderRadius.circular(10)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(Strings.level),
//           DropdownButtonFormField<Level>(
//               isDense: true,
//               icon: const SizedBox.shrink(),
//               decoration: const InputDecoration.collapsed(
//                 hintText: '',
//                 border: InputBorder.none,
//               ),
//               items: Level.values
//                   .map((e) => DropdownMenuItem<Level>(
//                       value: e,
//                       child: Text(
//                         e.translate,
//                         style: Theme.of(context).textTheme.subtitle1?.copyWith(
//                             color: Theme.of(context).primaryColor, height: .5),
//                       )))
//                   .toList(),
//               value: selectedLevel,
//               onChanged: onLevelChanged),
//         ],
//       ),
//     );
//   }
// }
