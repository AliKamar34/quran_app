part of 'sebha_cubit.dart';

@immutable
sealed class SebhaState {}

final class SebhaInitial extends SebhaState {}
final class ElhamdSuccess extends SebhaState {}
final class TasbehSuccess extends SebhaState {}
final class TakberSuccess extends SebhaState {}
final class Tasbeeh33Success extends SebhaState {}
final class Tasbeeh100Success extends SebhaState {}
final class Tasbeeh1000Success extends SebhaState {}



final class SebhaIncreasmentSuccess extends SebhaState {}

final class SebhaLoading extends SebhaState {}
final class SebhaFailuer extends SebhaState {}

