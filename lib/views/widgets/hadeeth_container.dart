import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class CustomHadeethContainer extends StatelessWidget {
  const CustomHadeethContainer({
    super.key,
    required this.hadeeth,
    // required this.noOfHadith,
  });
  final String hadeeth;
  // final List noOfHadith;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff415A77),
        shape: LinearBorder.bottom(),
      ),
      onPressed: () {
      },
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  hadeeth,
                  style: const TextStyle(fontFamily: kArabicFont, fontSize: 20),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
