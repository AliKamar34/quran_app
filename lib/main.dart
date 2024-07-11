import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/cubits/athan_cubit/athan_cubit.dart';
import 'package:quran_app/simple_bloc_observer.dart';
import 'package:quran_app/views/hadeeth_view.dart';
import 'package:quran_app/views/moshaf_view.dart';
import 'package:quran_app/views/salah_view.dart';
import 'package:quran_app/views/sebha_view.dart';
import 'package:quran_app/views/setting_view.dart';
import 'package:quran_app/views/soura_view.dart';
import 'package:quran_app/views/splash_view.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AthanCubit(),
        ),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        routes: {
          SouraView.id: (context) => const SouraView(),
          SebhaView.id: (context) => const SebhaView(),
          LinksView.id: (context) => const LinksView(),
          SalahView.id: (context) => const SalahView(),
          MoshafView.id: (context) => const MoshafView(),
          SettingView.id:(context) => const SettingView(),
        },
      ),
    );
  }
}
