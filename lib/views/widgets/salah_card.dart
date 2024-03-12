

import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class CustomSalaCard extends StatelessWidget {
  const CustomSalaCard(
      {super.key,
      required this.day,
      required this.date,
      required this.hijriDay,
      required this.hijriMonth,
      required this.hijriYear});
  final String day;
  final String date;
  final String hijriDay;
  final String hijriMonth;
  final String hijriYear;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Card(
        color: Colors.transparent,
        elevation: 8,
        child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      fontFamily: kLateefFontFamily,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Text(
                    ' $hijriDay ',
                    style: const TextStyle(
                      fontFamily: kLateefFontFamily,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' $hijriMonth ',
                    style: const TextStyle(
                      fontFamily: kLateefFontFamily,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    ' $hijriYear ',
                    style: const TextStyle(
                      fontFamily: kLateefFontFamily,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                day,
                style: const TextStyle(
                  fontFamily: kLateefFontFamily,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}