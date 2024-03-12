part of 'quran_cubit.dart';

@immutable
sealed class QuranState {}

final class QuranInitial extends QuranState {}

final class QuranSuccess extends QuranState {
  

}

final class QuranFailuer extends QuranState {}
