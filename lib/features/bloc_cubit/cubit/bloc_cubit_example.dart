import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_cubit_example.freezed.dart';
part 'bloc_cubit_state.dart';

class BlocCubitExample extends Cubit<BlocCubitState> {
  BlocCubitExample() : super(BlocCubitState.initial());

  Future<void> findNames() async {
    try {
      emit(BlocCubitState.loading());
      await Future.delayed(const Duration(seconds: 1));
      final List<String> names = [
        'Mateus',
        'Lucas',
        'Daniel',
        'Samuel',
        'Ester',
        'Ana',
      ];
      emit(BlocCubitState.data(names: names));
    } catch (e) {
      emit(BlocCubitState.erro(message: 'Ocorreu um erro ao Buscar os nomes'));
    }
  }

  void addName(String name) {
    try {
      final namesState = state.maybeWhen(
        data: (names) => names,
        orElse: () => <String>[],
      );
      final List<String> names = [...namesState];

      names.insert(0, name);

      emit(BlocCubitState.data(names: names));
    } catch (e) {
      emit(BlocCubitState.erro(message: 'Erro ao adicionar nome'));
    }
  }

  void removeName(String name) {
    try {
      final namesState = state.maybeWhen(
        data: (names) => names,
        orElse: () => <String>[],
      );
      final List<String> names = [...namesState];

      names.remove(name);
      emit(BlocCubitState.data(names: names));
    } catch (e) {
      emit(BlocCubitState.erro(message: 'Erro ao remover o nome'));
    }
  }
}
