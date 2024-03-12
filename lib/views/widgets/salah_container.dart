import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class CustomSalaContainer extends StatelessWidget {
  const CustomSalaContainer(
      {super.key, required this.time, required this.salah});
  final String time;
  final String salah;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      padding: const EdgeInsets.only(left: 20, right: 20),
      margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: const TextStyle(
                fontFamily: kLateefFontFamily,
                fontSize: 25,
                color: Colors.white),
          ),
          Text(
            salah,
            style: const TextStyle(
                fontFamily: kLateefFontFamily,
                fontSize: 24,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
