import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/cubits/sebha_cubit/sebha_cubit.dart';

import 'package:quran_app/views/widgets/custom_elevated_button.dart';

class SebhaViewBody extends StatelessWidget {
  SebhaViewBody({super.key});
  String tasbeha = 'السبحه ';
  int noOfTasbeeeh = 33;
  int numberOfTasbeeh = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SebhaCubit, SebhaState>(
      listener: (context, state) {
        if (state is TakberSuccess) {
          tasbeha = 'الله اكبر';
        } else if (state is TasbehSuccess) {
          tasbeha = 'سبحان الله';
        } else if (state is ElhamdSuccess) {
          tasbeha = 'الحمد لله';
        } else if (state is SebhaFailuer) {
          tasbeha = 'حاول مره تانيه';
        } else if (state is Tasbeeh33Success) {
          noOfTasbeeeh = 33;
        } else if (state is Tasbeeh100Success) {
          noOfTasbeeeh = 100;
        } else if (state is Tasbeeh1000Success) {
          noOfTasbeeeh = 1000;
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            Container(
              color: kPrimaryColor,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          number: '33',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeNumberOfTasbeha(33);
                          },
                        ),
                        CustomElevatedButton(
                          number: '100',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeNumberOfTasbeha(100);
                          },
                        ),
                        CustomElevatedButton(
                          number: '1000',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeNumberOfTasbeha(1000);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          number: 'الله اكبر',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeTasbeha('الله اكبر');
                          },
                        ),
                        CustomElevatedButton(
                          number: 'الحمد  لله',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeTasbeha('الحمد  لله');
                          },
                        ),
                        CustomElevatedButton(
                          number: 'سبحان الله',
                          onPressed: () {
                            BlocProvider.of<SebhaCubit>(context)
                                .changeTasbeha('سبحان الله');
                          },
                        ),
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
              percent: (numberOfTasbeeh / noOfTasbeeeh),
              center: Text(
                tasbeha,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: kLateefFontFamily,
                ),
              ),
              footer: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '$numberOfTasbeeh',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: kPrimaryColor,
              backgroundColor: kPrimaryColor.withOpacity(0.4),
            ),
            CustomElevatedButton(
              primaryColor: true,
              number: tasbeha,
              onPressed: () {
                numberOfTasbeeh++;
                if (numberOfTasbeeh == noOfTasbeeeh) {
                  numberOfTasbeeh = 0;
                }
                BlocProvider.of<SebhaCubit>(context)
                    .increasmentOfTasbeeh(numberOfTasbeeh);
              },
            )
          ],
        );
      },
    );
  }
}
