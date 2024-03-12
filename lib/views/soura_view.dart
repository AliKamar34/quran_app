import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/services/get_sourah_services.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';
import 'package:quran/quran.dart' as quran;

class SouraView extends StatelessWidget {
  const SouraView({super.key});
  static String id = 'souraView';

  @override
  Widget build(BuildContext context) {
    var souraNumber = ModalRoute.of(context)!.settings.arguments as int;
    List<dynamic> ayatList = getSourah(souraNumber);
  
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: 'سوره  ${arabicName[souraNumber - 1]['name']}',
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              itemCount: ayatList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    (index != 0) || (souraNumber == 1) || (souraNumber == 9)
                        ? const Text('')
                        : const Text(
                            quran.basmala,
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: kArabicFont,
                            ),
                          ),
                    ayatList[index],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
