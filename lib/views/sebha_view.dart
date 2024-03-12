import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});
  static String id = 'sebhaView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldColor,
      body: Column(
        children: [
          CustomAppBar(title: 'sebhaa'),
          SebhaViewBody(),
        ],
      ),
    );
  }
}

class SebhaViewBody extends StatelessWidget {
  const SebhaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          height: 150,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(number: '33'),
                    CustomElevatedButton(number: '100'),
                    CustomElevatedButton(number: '1000'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomElevatedButton(number: 'الله اكبر'),
                    CustomElevatedButton(number: 'الحمد  لله'),
                    CustomElevatedButton(number: 'سبحان الله'),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CircularPercentIndicator(
          radius: 70.0,
          lineWidth: 8.0,
          animation: true,
          percent: 0.5,
          center: const Text(
            'الحمد لله',
            style: TextStyle(fontSize: 20.0),
          ),
          // footer: Text(
          //   "Sales this week",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          // ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: kPrimaryColor,
          backgroundColor: kPrimaryColor.withOpacity(0.4),
        ),
        const CustomElevatedButton(number: 'tasbeeh')
      ],
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.number,
  });
  final String number;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(40, 25),
        backgroundColor: kScaffoldColor,
      ),
      child: Text(number),
    );
  }
}
