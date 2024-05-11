// import 'package:flutter/material.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:templax/src/exports.dart_exporter.dart';

// class MyFooter extends StatefulWidget {
//   int type;
//   int? color;
//   MyFooter({Key? key, required this.type, this.color});

//   @override
//   State<MyFooter> createState() => _MyFooterState();
// }

// class _MyFooterState extends State<MyFooter> {
//   String version = '';
//   int year = DateTime.now().year;

//   //evane : getter pour la version de l'application
//   getVersion() async {
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//     setState(() {
//       version = packageInfo.version;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     getVersion();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: widget.color == 1
//           ? Colors.white
//           : AppTheme.of(context).primaryBackground,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           widget.type == 1
//               ? Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "WAKO",
//                       style: AppTheme.of(context).title2,
//                     ),
//                   ],
//                 )
//               : Container(),
//           SizedBox(
//             height: 3,
//           ),
//           Text(
//             //evane : affichage de la version de l'application
//             "Alima x Mereva Copyright © $year - v$version",
//             style: AppTheme.of(context).subtitle1,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }
