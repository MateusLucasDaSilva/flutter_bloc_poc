// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'count_bloc.dart';

abstract class CountState {
  final int count;

  CountState(this.count);

  @override
  bool operator ==(covariant CountState other) {
    if (identical(this, other)) return true;

    return other.count == count;
  }

  @override
  int get hashCode => count.hashCode;
}

class CountStateInitial extends CountState {
  CountStateInitial() : super(0);
}

class CountStateData extends CountState {
  CountStateData(super.count);
}
