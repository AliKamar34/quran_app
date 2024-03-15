import 'package:flutter/material.dart';

import 'package:quran_app/constant.dart';

import 'package:quran_app/views/widgets/salah_view_body.dart';

class SalahView extends StatelessWidget {
  const SalahView({super.key});
  static String id = 'salahView';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      
      child:  Scaffold(
        backgroundColor: kScaffoldColor,
        body: SalahViewBody(),
      ),
    );
  }
}
