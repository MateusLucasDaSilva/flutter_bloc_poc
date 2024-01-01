part of 'bloc_freezed_example.dart';

@freezed
class BlocFreezedEvent with _$BlocFreezedEvent {
  const factory BlocFreezedEvent.findNames() = _BlocFreezedEventFindNames;
  const factory BlocFreezedEvent.addNames(String name) =
      _BlocFreezedEventAddNames;
  const factory BlocFreezedEvent.removeName(String name) =
      _BlocFreezedEventRemoveName;
}
