part of 'number_bloc.dart';

@immutable
abstract class NumberEvent {}

class PlusEvent extends NumberEvent {}

class MinusEvent extends NumberEvent {}
