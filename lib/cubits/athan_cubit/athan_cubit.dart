import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/models/prayer_times_model.dart';
import 'package:quran_app/services/API/athan_service.dart';

part 'athan_state.dart';

class AthanCubit extends Cubit<AthanState> {
  AthanCubit() : super(AthanInitial());

  PrayerTimingsModel? prayerTimingsModel;

  getTimePray() async {
    emit(AthanLoading());
    try {
      prayerTimingsModel = await AthanService(Dio()).getPrayerTime();

      emit(AthanSuccess());
    }  catch (e) {
      print( 'this is the error in the athan cubit $e');
      emit(Athanfailuer());
    }
  }
}
