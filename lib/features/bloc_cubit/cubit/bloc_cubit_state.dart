part of 'bloc_cubit_example.dart';

@freezed
class BlocCubitState with _$BlocCubitState {
  factory BlocCubitState.initial() = _BlocCubitStateInitial;
  factory BlocCubitState.loading() = _BlocCubitStateLoading;
  factory BlocCubitState.erro({required String message}) = _BlocCubitStateError;
  factory BlocCubitState.data({required List<String> names}) =
      _BlocCubitStateData;
}
