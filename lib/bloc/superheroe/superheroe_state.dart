part of 'superheroe_bloc.dart';

class SuperheroeState {
  final bool superheroeExist;
  final Superheroe? superheroe;

  SuperheroeState({this.superheroe}) : superheroeExist = superheroe != null;
}
