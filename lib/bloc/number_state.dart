part of 'number_bloc.dart';

@immutable
abstract class NumberState {}

class NumberInitial extends NumberState {}

class NumberChange extends NumberState {

  int number;
  NumberChange(this.number);

}
