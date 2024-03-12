import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/models/all_quran_model.dart';
import 'package:quran_app/services/API/get_all_sourahs_services.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';

class HadeethView extends StatelessWidget {
  const HadeethView({super.key});
  static String id = 'hadeethView';

  @override
  Widget build(BuildContext context) {
    // List<QuranModel> quran = QuranService(Dio()).getAllQuran();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomAppBar(title: 'المصحف كامل'),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              // itemCount: ,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      // child: quran[index],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
