part of 'superheroe_bloc.dart';

@immutable
abstract class SuperheroeEvent {}

class SuperheroeCreateEvent extends SuperheroeEvent {
  final Superheroe superheroe;
  SuperheroeCreateEvent({required this.superheroe});
}

class SuperheroeUpdateExperienceEvent extends SuperheroeEvent {}

class SuperheroeAddPowerEvent extends SuperheroeEvent {}
