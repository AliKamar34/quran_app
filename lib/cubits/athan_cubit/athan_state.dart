part of 'athan_cubit.dart';

@immutable
sealed class AthanState {}

final class AthanInitial extends AthanState {}

final class AthanSuccess extends AthanState {}

final class AthanLoading extends AthanState {}

final class Athanfailuer extends AthanState {
 
  
}
