import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran/quran.dart' as quran;

List<dynamic> getSourah(int souraNumber) {
  List ayatList = [];
  for (var i = 1; i <= quran.getVerseCount(souraNumber); i += 2) {
    if (quran.getVerseCount(souraNumber) >= i) {
      ayatList.add(
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
            children: [
              TextSpan(
                text: quran.getVerse(souraNumber, i, verseEndSymbol: true),
                style:  TextStyle(
                  fontSize: kMushafFontSize,
                  fontFamily: kLateefFontFamily,
                  color: Colors.black,
                ),
              ),
              (quran.getVerseCount(souraNumber) > i)
                  ? TextSpan(
                      text: quran.getVerse(souraNumber, i + 1,
                          verseEndSymbol: true),
                      style:  TextStyle(
                        fontSize: kMushafFontSize,
                        fontFamily: kLateefFontFamily,
                        color: Colors.black,
                      ),
                    )
                  : const TextSpan(text: ''),
            ],
          ),
        ),
      );
    }
  }
  return ayatList;
}

// getAllSourahs() {
//   List sourahs = [];
//   for (var i = 1; i < 114; i++) {
//     sourahs.add(getSourah(i));
//   }
//   return sourahs;
// }
