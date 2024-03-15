import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quran_app/cubits/athan_cubit/athan_cubit.dart';
import 'package:quran_app/views/widgets/custom_app_bar.dart';
import 'package:quran_app/views/widgets/salah_card.dart';
import 'package:quran_app/views/widgets/salah_container.dart';

class SalahViewBody extends StatelessWidget {
  const SalahViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AthanCubit, AthanState>(
      builder: (context, state) {
        String fajrTime = '00:00';
        String sunriseTime = '00:00';
        String dhuhrTime = '00:00';
        String asrTime = '00:00';
        String maghribTime = '00:00';
        String ishaTime = '00:00';

        if (state is AthanLoading) {
          fajrTime = 'loading';
          sunriseTime = 'loading';
          dhuhrTime = 'loading';
          asrTime = 'loading';
          maghribTime = 'loading';
          ishaTime = 'loading';
        } else if (state is AthanSuccess) {
          fajrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.fajr ??
                  'success');
          sunriseTime = (BlocProvider.of<AthanCubit>(context)
                  .prayerTimingsModel
                  ?.sunrise ??
              'success');
          dhuhrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.dhuhr ??
                  'success');
          asrTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.asr ??
                  'success');
          maghribTime = (BlocProvider.of<AthanCubit>(context)
                  .prayerTimingsModel
                  ?.maghrib ??
              'success');
          ishaTime =
              (BlocProvider.of<AthanCubit>(context).prayerTimingsModel?.isha ??
                  'success');
        } else if (state is Athanfailuer) {
          fajrTime = 'failuer';
          sunriseTime = 'failuer';
          dhuhrTime = 'failuer';
          asrTime = 'failuer';
          maghribTime = 'failuer';
          ishaTime = 'failuer';
        } else {
          BlocProvider.of<AthanCubit>(context).getTimePray();
        }

        return Column(
          children: [
            const CustomAppBar(title: 'الصلاه'),
            CustomSalaCard(
              day: BlocProvider.of<AthanCubit>(context)
                      .prayerTimingsModel
                      ?.day ??
                  'السبت',
              date: BlocProvider.of<AthanCubit>(context)
                      .prayerTimingsModel
                      ?.date ??
                  '1/6/2003',
              hijriDay: BlocProvider.of<AthanCubit>(context)
                      .prayerTimingsModel
                      ?.hijriDay ??
                  '1',
              hijriMonth: BlocProvider.of<AthanCubit>(context)
                      .prayerTimingsModel
                      ?.hijriMonth ??
                  '6',
              hijriYear: BlocProvider.of<AthanCubit>(context)
                      .prayerTimingsModel
                      ?.hijriYear ??
                  '1435',
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  CustomSalaContainer(
                      time: formatTime(fajrTime), salah: 'الفجر'),
                  CustomSalaContainer(
                      time: formatTime(sunriseTime), salah: 'الشروق'),
                  CustomSalaContainer(
                      time: formatTime(dhuhrTime), salah: 'الظهر'),
                  CustomSalaContainer(
                      time: formatTime(asrTime), salah: 'العصر'),
                  CustomSalaContainer(
                      time: formatTime(maghribTime), salah: 'المغرب'),
                  CustomSalaContainer(
                      time: formatTime(ishaTime), salah: 'العشاء'),
                ],
             
              ),
            ),
          ],
        );
      },
    );
  }
}

String formatTime(String time) {
  
  try {
    DateTime parsedTime = DateFormat('HH:mm').parse(time);
   
    String formattedTime = DateFormat('hh:mm a').format(parsedTime);
    return formattedTime;
  } on Exception catch (e) {
    print(e);
    return time;
  }
}


