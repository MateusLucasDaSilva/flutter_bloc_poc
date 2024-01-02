part of 'bloc_freezed_example.dart';

@freezed
class BlocFreezedState with _$BlocFreezedState {
  factory BlocFreezedState.initial() = _BlocFreezedStateInitial;
  factory BlocFreezedState.loading() = _BlocFreezedStateLoading;
  factory BlocFreezedState.notification({required String message}) =
      _BlocFreezedStateNotification;
  factory BlocFreezedState.data({required List<String> names}) =
      _BlocFreezedStateData;
}
