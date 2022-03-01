part of 'superheroe_bloc.dart';

@immutable
abstract class SuperheroeEvent {}

class SuperheroeCreateEvent extends SuperheroeEvent {
  final Superheroe superheroe;
  SuperheroeCreateEvent({required this.superheroe});
}

class SuperheroeUpdateExperienceEvent extends SuperheroeEvent {
  final int experience;
  SuperheroeUpdateExperienceEvent({required this.experience});
}

class SuperheroeAddPowerEvent extends SuperheroeEvent {}
