import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.number,
    required this.onPressed,
    this.primaryColor,
  });
  final String number;
  void Function()? onPressed;
  bool? primaryColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(40, 25),
        backgroundColor:
            (primaryColor == true) ? kPrimaryColor : kScaffoldColor,
      ),
      child: Text(
        number,
        style: const TextStyle(fontFamily: kLateefFontFamily, fontSize: 20),
      ),
    );
  }
}
