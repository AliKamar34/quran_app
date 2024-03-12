import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      height: 80,
      width: double.infinity,
      child:  Center(
        child: Text(
          title,
          style: const TextStyle(
              fontFamily: kLateefFontFamily, color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
