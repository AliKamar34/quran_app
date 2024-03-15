import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/hadeeth_view.dart';
import 'package:quran_app/views/moshaf_view.dart';
import 'package:quran_app/views/salah_view.dart';
import 'package:quran_app/views/sebha_view.dart';

class AnimatedNavigationBotton extends StatefulWidget {
  const AnimatedNavigationBotton({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<AnimatedNavigationBotton> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff415A77),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(8),
          height: screenWidth * .145,
          decoration: BoxDecoration(
            color: kPrimaryColor, // Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .024),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  SizedBox(
                    width: screenWidth * .2125,
                    child: Center(
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == currentIndex ? screenWidth * .12 : 0,
                        width: index == currentIndex ? screenWidth * .2125 : 0,
                        decoration: BoxDecoration(
                          color: index == currentIndex
                              ? Colors.blueAccent.withOpacity(.2)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * .2125,
                    alignment: Alignment.center,
                    child: Icon(
                      listOfIcons[index],
                      size: screenWidth * .076,
                      color: index == currentIndex
                          ? Colors.blueAccent
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: pages[currentIndex],
      ),
    );
  }

  List<IconData> listOfIcons = [
    FlutterIslamicIcons.quran2,
    FlutterIslamicIcons.tasbih2,
    FlutterIslamicIcons.sajadah,
    FlutterIslamicIcons.mohammad,
  ];

  final List<Widget> pages = [
    const MoshafView(),
    const SebhaView(),
    const SalahView(),
    const LinksView(),
  ];
}
