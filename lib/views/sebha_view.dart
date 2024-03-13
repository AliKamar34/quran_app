import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quran_app/constant.dart';
import 'package:quran_app/cubits/sebha_cubit/sebha_cubit.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';
import 'package:quran_app/views/widgets/sebha_view_body.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});
  static String id = 'sebhaView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SebhaCubit(),
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        body: Column(
          children: [
            const CustomAppBar(title: 'السبحه'),
            SebhaViewBody(),
          ],
        ),
      ),
    );
  }
}