import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
  }

  FutureOr<void> _findNames(
    ExampleFindNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
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
