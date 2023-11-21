import 'package:bloc/bloc.dart';

part 'count_event.dart';
part 'count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(CountStateInitial()) {
    on<CountIncrement>(_increment);
    on<CountDecrement>(_decrement);
  }

  void _increment(CountIncrement event, Emitter<CountState> emit) {
    emit(CountStateData(state.count + 1));
  }

  void _decrement(CountDecrement event, Emitter<CountState> emit) {
    emit(CountStateData(state.count - 1));
  }
}
