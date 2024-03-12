import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quran_app/models/all_quran_model.dart';

class QuranService {
  final Dio dio;

  QuranService(this.dio);
  Future<QuranModel> getAllQuran() async {
    try {
      Response response =
          await dio.get('https://api.alquran.cloud/v1/quran/quran-uthmani ');
      QuranModel quranModel = QuranModel.fromJson(response.data);
      return quranModel;
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
