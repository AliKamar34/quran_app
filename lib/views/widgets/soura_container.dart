import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/soura_view.dart';

class CustomSouraContainer extends StatelessWidget {
  const CustomSouraContainer({
    super.key,
    required this.souraName,
    required this.noOfAyat,
    required this.souraNumber,
    required this.souraPlace,
  });
  final String souraName;
  final String souraPlace;
  final int noOfAyat;
  final int souraNumber;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff415A77),
        shape: LinearBorder.bottom(),
      ),
      onPressed: () {
        Navigator.pushNamed(context, SouraView.id, arguments: souraNumber);
      },
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              souraPlace == 'Makkah' ? 'مكيه' : 'مدنيه',
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: kLateefFontFamily,
                  color: Colors.white),
            ),
            Column(
              children: [
                Text(
                  souraName,
                  style: const TextStyle(
                      fontFamily: kArabicFont,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text(
                  'عدد   اياتها  :   $noOfAyat',
                  style: const TextStyle(
                      fontFamily: kLateefFontFamily,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
