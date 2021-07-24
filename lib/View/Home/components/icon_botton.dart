// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:jbb/constants.dart';

// class Iconbotton extends StatelessWidget {
//   final int numofitem;
//   final String svgsrc;
//   final GestureTapCallback press;

//   Iconbotton(
//       {Key key,
//       @required this.svgsrc,
//       this.numofitem = 0,
//       @required this.press})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(100),
//       onTap: press,
//       child: Stack(
//         overflow: Overflow.visible,
//         children: [
//           Container(
//             padding: EdgeInsets.all((12)),
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//               color: primarycolour
//               .withOpacity(0.1),
//               shape: BoxShape.circle,
//             ),
//             child: SvgPicture.asset(svgsrc),
//           ),
//           if (numofitem != 0)
//             Positioned(
//               top: -3,
//               right: 0,
//               child: Container(
//                 height: 16,
//                 width: 16,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFFF4848),
//                   shape: BoxShape.circle,
//                   border: Border.all(width: 1.5, color: Colors.white),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "$numofitem",
//                     style: TextStyle(
//                       fontSize: 10,
//                       height: 1,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }
