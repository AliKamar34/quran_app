// import 'package:flutter/material.dart';
// import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
// import 'package:quran_app/constant.dart';
// import 'package:quran_app/views/hadeeth_view.dart';
// import 'package:quran_app/views/moshaf_view.dart';
// import 'package:quran_app/views/salah_view.dart';
// import 'package:quran_app/views/sebha_view.dart';

// class BottomNavigationView extends StatefulWidget {
//   const BottomNavigationView({super.key});

//   @override
//   State<BottomNavigationView> createState() => _BottomNavigationViewState();
// }

// class _BottomNavigationViewState extends State<BottomNavigationView> {
//   int currentIndex = 0;

//   final List<Widget> pages = [
//     const MoshafView(),
//     const HadeethView(),
//     const SebhaView(),
//     const SalahView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedIconTheme: const IconThemeData(size: 22),
//         unselectedIconTheme: const IconThemeData(size: 20),
//         selectedLabelStyle:
//             const TextStyle(fontSize: 20, fontFamily: kLateefFontFamily),
//         unselectedLabelStyle:
//             const TextStyle(fontSize: 16, fontFamily: kLateefFontFamily),
//         selectedItemColor: Colors.cyanAccent,
//         unselectedItemColor: Colors.white,
//         currentIndex: currentIndex,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: kPrimaryColor,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(FlutterIslamicIcons.quran2),
//             label: 'المصحف',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FlutterIslamicIcons.mohammad),
//             label: 'الحديث',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FlutterIslamicIcons.tasbih2),
//             label: 'السبحه',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(FlutterIslamicIcons.sajadah),
//             label: 'الصلاه',
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
