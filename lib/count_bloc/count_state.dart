part of 'count_bloc.dart';

abstract class CountState {
  final int count;

  CountState(this.count);
}

class CountStateInitial extends CountState {
  CountStateInitial() : super(0);
}

class CountStateData extends CountState {
  CountStateData(int count) : super(count);
}
