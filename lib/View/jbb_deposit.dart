// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';

// class DepositScreen extends StatefulWidget {
//   static var routeName;

//   @override
//   _DepositScreenState createState() => _DepositScreenState();
// }

// class _DepositScreenState extends State<DepositScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final descTextStyle = TextStyle(
//       color: Colors.black87,
//       fontWeight: FontWeight.w500,
//       fontFamily: 'Roboto',
//       letterSpacing: 0,
//       fontSize: 15,
//       height: 1.5,
//     );
//     final iconList = DefaultTextStyle.merge(
//       style: descTextStyle,
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//           Column(
//             children: [
//               Icon(
//                 Icons.escalator_warning_rounded,
//                 color: HexColor("#c93c00"),
//                 size: 40.0,
//               ),
//               Text('Join'),
//               Text('collectors'),
//             ],
//           ),
//           Column(
//             children: [
//               Icon(
//                 Icons.assignment_returned,
//                 color: HexColor("#c93c00"),
//                 size: 40.0,
//               ),
//               Text('Deposit'),
//               Text('N O W !'),
//             ],
//           ),
//           Column(
//             children: [
//               Icon(
//                 Icons.local_atm_rounded,
//                 color: HexColor("#c93c00"),
//                 size: 40.0,
//               ),
//               Text('Credit'),
//               Text('Withdraw'),
//             ],
//           ),
//         ]),
//       ),
//     );

//     final credittext = Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Text(
//           "Credit",
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w800, letterSpacing: 2),
//         ),
//         const SizedBox(
//           width: 9,
//         ),
//         Text(
//           "RP. 80.000 ",
//           style: TextStyle(
//               fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.2),
//         )
//       ],
//     );
//     final mainbar = Container(
//       padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//       child: Column(
//         children: [
//           // titleText,
//           // subTitle,
//           // ratings,
//           iconList,
//           SizedBox(
//             height: 9.0,
//           ),
//           Divider(
//             color: HexColor('#c93c00'),
//             indent: 10,
//             endIndent: 10.0,
//             thickness: 4,
//           ),
//           credittext,
//         ],
//       ),
//     );

//     return Scaffold(
//       backgroundColor: HexColor('#31bacc'),
//       appBar: AppBar(
//         title: const Text(
//           'Jakarta Bottle Bank',
//           style: TextStyle(
//               // color: HexColor('#c93c00'),
//               ),
//         ),
//         backgroundColor: HexColor('#31bacc'),
//       ),
//       body: Center(
//         child: Container(
//           margin: EdgeInsets.fromLTRB(0, 0, 0, 200),
//           height: 180,
//           child: Card(
//             color: Colors.orange,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: Container(
//                     width: 380,
//                     child: mainbar,
//                   ),
//                 )

//                 // mainImage,
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.orange,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list_alt),
//             label: 'Manange',
//             // backgroundColor: Colors.orange,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'H O M E',
//             // backgroundColor: Colors.green,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: 'Profile',
//             // backgroundColor: Colors.pink,
//           ),
//         ],
//         selectedItemColor: Colors.blue,
//         currentIndex: 1,
//         // onTap: {} ),
//       ),
//     );
//   }
// }
