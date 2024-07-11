import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:quran_app/views/widgets/custom_app_bar.dart';

class LinksView extends StatelessWidget {
  const LinksView({super.key});
  static String id = 'LinksView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kScaffoldColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(title: 'لينكات مفيده '),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                itemCount: links.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff415A77),
                          shape: LinearBorder.bottom(),
                        ),
                        onPressed: () async {
                          if (!await launchUrl(Uri.parse(links[index]['url']),
                              mode: LaunchMode.externalApplication)) {
                            throw 'Could not launch ${links[index]['url']}';
                          }
                        },
                        child: Container(
                          height: 70,
                          width: double.infinity,
                          color: kScaffoldColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                links[index]['name'],
                                style: const TextStyle(
                                    fontFamily: kLateefFontFamily,
                                    fontSize: 24,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
