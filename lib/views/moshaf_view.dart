import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';
import 'package:quran_app/views/widgets/moshaf_app_bar.dart';
import 'package:quran_app/views/widgets/soura_container.dart';
import 'package:quran/quran.dart' as quran;

class MoshafView extends StatelessWidget {
  const MoshafView({super.key});
  static String id = 'moshafView';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        body: Column(
          children: [
            const CustomMoshafAppBar(
              title: 'القران الكريم ',
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: arabicName.length,
                itemBuilder: (context, index) {
                  return CustomSouraContainer(
                    souraPlace:
                        quran.getPlaceOfRevelation(arabicName[index]['surah']),
                    souraName: arabicName[index]['name'].toString(),
                    souraNumber: arabicName[index]['surah'],
                    noOfAyat: noOfVerses[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
