
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/simple_bloc_observer.dart';
import 'package:quran_app/views/hadeeth_view.dart';
import 'package:quran_app/views/moshaf_view.dart';
import 'package:quran_app/views/salah_view.dart';
import 'package:quran_app/views/sebha_view.dart';
import 'package:quran_app/views/soura_view.dart';
import 'package:quran_app/views/splash_view.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp ());
    },
    blocObserver: SimpleBlocObserver(),
  );
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          const SplashView(), 
      routes: {
        SouraView.id: (context) => const SouraView(),
        SebhaView.id: (context) => const SebhaView(),
        HadeethView.id: (context) => const HadeethView(),
        SalahView.id: (context) =>  SalahView(),
        MoshafView.id: (context) => const MoshafView(),
      },
    );
  }
}
