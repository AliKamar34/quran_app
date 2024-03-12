import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/models/all_quran_model.dart';
import 'package:quran_app/services/API/get_all_sourahs_services.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  QuranCubit() : super(QuranInitial());

  QuranModel? quranModel;
  getAllMoshaf() async {
    try {
      quranModel = await QuranService(Dio()).getAllQuran();
      emit(QuranSuccess());
    } on Exception catch (e) {
      emit(QuranFailuer());
    }
  }
}
