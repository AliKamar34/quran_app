import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  static String id = 'settingView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldColor,
      body: Column(
        children: [
          CustomAppBar(title: 'الاعدادات'),
          SliderWidget(),
        ],
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Slider(
        value: kMushafFontSize,
        min: 30,
        max: 100,
        onChanged: (value) {
          setState(() {
            kMushafFontSize = value;
          });
        });
  }
}
