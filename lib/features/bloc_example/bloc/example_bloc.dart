import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);
    on<ExampleAddNameEvent>(_addName);
  }

  FutureOr<void> _removeName(
    ExampleRemoveNameEvent event,
    Emitter<ExampleState> emit,
  ) {
    final ExampleState currentState = state;

    if (currentState is ExampleStateData) {
      currentState.names.remove(event.name);
      emit(ExampleStateData(names: currentState.names));
    }
  }

  FutureOr<void> _addName(
    ExampleAddNameEvent event,
    Emitter<ExampleState> emit,
  ) {
    final ExampleState currentState = state;

    if (currentState is ExampleStateData) {
      currentState.names.insert(0, event.name);
      emit(ExampleStateData(names: currentState.names));
    }
  }

  FutureOr<void> _findNames(
    ExampleFindNameEvent event,
    Emitter<ExampleState> emit,
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
    emit(ExampleStateData(names: names));
  }
}
