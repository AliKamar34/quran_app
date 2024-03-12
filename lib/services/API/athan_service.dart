import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quran_app/models/prayer_times_model.dart';

class AthanService {
  final Dio dio;

  AthanService(this.dio);

  Future<PrayerTimingsModel> getPrayerTime() async {
    try {
      Response response = await dio.get(
          'https://api.aladhan.com/v1/timingsByCity?city=mansoura&country=egypt&method=5');

      PrayerTimingsModel prayerTimingsModel =
          PrayerTimingsModel.fromJson(response.data);

    

      return prayerTimingsModel;
      
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error , try later';
      throw Exception(errorMessage);
    } on Exception catch (e) {
      log(e.toString());
      throw Exception('try later');
    }
  }
}
