import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_freezed_event.dart';
part 'bloc_freezed_example.freezed.dart';
part 'bloc_freezed_state.dart';

class BlocFreezedExample extends Bloc<BlocFreezedEvent, BlocFreezedState> {
  BlocFreezedExample() : super(BlocFreezedState.initial()) {
    on<_BlocFreezedEventAddNames>(_addName);
    on<_BlocFreezedEventFindNames>(_findNames);
    on<_BlocFreezedEventRemoveName>(_removeName);
  }

  FutureOr<void> _removeName(
    _BlocFreezedEventRemoveName event,
    Emitter<BlocFreezedState> emit,
  ) {
    final List<String> names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );

    final newNames = [...names];
    newNames.remove(event.name);

    emit(BlocFreezedState.data(names: newNames));
  }

  FutureOr<void> _addName(
    _BlocFreezedEventAddNames event,
    Emitter<BlocFreezedState> emit,
  ) {
    final List<String> names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );
    final newNames = [...names];
    newNames.add(event.name);
    emit(BlocFreezedState.data(names: newNames));
  }

  FutureOr<void> _findNames(
    _BlocFreezedEventFindNames event,
    Emitter<BlocFreezedState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    final names = [
      'Mateus',
      'Lucas',
      'Daniel',
      'Samuel',
      'Ester',
      'Ana',
    ];
    emit(BlocFreezedState.data(names: names));
    return null;
  }
}
