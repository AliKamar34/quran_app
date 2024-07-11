import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/setting_view.dart';

class CustomMoshafAppBar extends StatelessWidget {
  const CustomMoshafAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                SettingView.id,
              );
            },
            icon: const Icon(Icons.settings),
          ),
          Text(
            title,
            style: const TextStyle(
                fontFamily: kLateefFontFamily,
                color: Colors.white,
                fontSize: 24),
          ),
        ],
      ),
    );
  }
}
