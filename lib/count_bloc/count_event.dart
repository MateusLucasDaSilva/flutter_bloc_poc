part of 'count_bloc.dart';

abstract class CountEvent {}

class CountIncrement extends CountEvent {}

class CountDecrement extends CountEvent {}
