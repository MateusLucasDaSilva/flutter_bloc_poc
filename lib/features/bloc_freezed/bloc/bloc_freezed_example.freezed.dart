// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_freezed_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocFreezedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addNames,
    required TResult Function(String name) removeName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addNames,
    TResult? Function(String name)? removeName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addNames,
    TResult Function(String name)? removeName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedEventFindNames value) findNames,
    required TResult Function(_BlocFreezedEventAddNames value) addNames,
    required TResult Function(_BlocFreezedEventRemoveName value) removeName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedEventFindNames value)? findNames,
    TResult? Function(_BlocFreezedEventAddNames value)? addNames,
    TResult? Function(_BlocFreezedEventRemoveName value)? removeName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedEventFindNames value)? findNames,
    TResult Function(_BlocFreezedEventAddNames value)? addNames,
    TResult Function(_BlocFreezedEventRemoveName value)? removeName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocFreezedEventCopyWith<$Res> {
  factory $BlocFreezedEventCopyWith(
          BlocFreezedEvent value, $Res Function(BlocFreezedEvent) then) =
      _$BlocFreezedEventCopyWithImpl<$Res, BlocFreezedEvent>;
}

/// @nodoc
class _$BlocFreezedEventCopyWithImpl<$Res, $Val extends BlocFreezedEvent>
    implements $BlocFreezedEventCopyWith<$Res> {
  _$BlocFreezedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocFreezedEventFindNamesImplCopyWith<$Res> {
  factory _$$BlocFreezedEventFindNamesImplCopyWith(
          _$BlocFreezedEventFindNamesImpl value,
          $Res Function(_$BlocFreezedEventFindNamesImpl) then) =
      __$$BlocFreezedEventFindNamesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocFreezedEventFindNamesImplCopyWithImpl<$Res>
    extends _$BlocFreezedEventCopyWithImpl<$Res,
        _$BlocFreezedEventFindNamesImpl>
    implements _$$BlocFreezedEventFindNamesImplCopyWith<$Res> {
  __$$BlocFreezedEventFindNamesImplCopyWithImpl(
      _$BlocFreezedEventFindNamesImpl _value,
      $Res Function(_$BlocFreezedEventFindNamesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocFreezedEventFindNamesImpl implements _BlocFreezedEventFindNames {
  const _$BlocFreezedEventFindNamesImpl();

  @override
  String toString() {
    return 'BlocFreezedEvent.findNames()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocFreezedEventFindNamesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addNames,
    required TResult Function(String name) removeName,
  }) {
    return findNames();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addNames,
    TResult? Function(String name)? removeName,
  }) {
    return findNames?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addNames,
    TResult Function(String name)? removeName,
    required TResult orElse(),
  }) {
    if (findNames != null) {
      return findNames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedEventFindNames value) findNames,
    required TResult Function(_BlocFreezedEventAddNames value) addNames,
    required TResult Function(_BlocFreezedEventRemoveName value) removeName,
  }) {
    return findNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedEventFindNames value)? findNames,
    TResult? Function(_BlocFreezedEventAddNames value)? addNames,
    TResult? Function(_BlocFreezedEventRemoveName value)? removeName,
  }) {
    return findNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedEventFindNames value)? findNames,
    TResult Function(_BlocFreezedEventAddNames value)? addNames,
    TResult Function(_BlocFreezedEventRemoveName value)? removeName,
    required TResult orElse(),
  }) {
    if (findNames != null) {
      return findNames(this);
    }
    return orElse();
  }
}

abstract class _BlocFreezedEventFindNames implements BlocFreezedEvent {
  const factory _BlocFreezedEventFindNames() = _$BlocFreezedEventFindNamesImpl;
}

/// @nodoc
abstract class _$$BlocFreezedEventAddNamesImplCopyWith<$Res> {
  factory _$$BlocFreezedEventAddNamesImplCopyWith(
          _$BlocFreezedEventAddNamesImpl value,
          $Res Function(_$BlocFreezedEventAddNamesImpl) then) =
      __$$BlocFreezedEventAddNamesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$BlocFreezedEventAddNamesImplCopyWithImpl<$Res>
    extends _$BlocFreezedEventCopyWithImpl<$Res, _$BlocFreezedEventAddNamesImpl>
    implements _$$BlocFreezedEventAddNamesImplCopyWith<$Res> {
  __$$BlocFreezedEventAddNamesImplCopyWithImpl(
      _$BlocFreezedEventAddNamesImpl _value,
      $Res Function(_$BlocFreezedEventAddNamesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BlocFreezedEventAddNamesImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocFreezedEventAddNamesImpl implements _BlocFreezedEventAddNames {
  const _$BlocFreezedEventAddNamesImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'BlocFreezedEvent.addNames(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocFreezedEventAddNamesImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocFreezedEventAddNamesImplCopyWith<_$BlocFreezedEventAddNamesImpl>
      get copyWith => __$$BlocFreezedEventAddNamesImplCopyWithImpl<
          _$BlocFreezedEventAddNamesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addNames,
    required TResult Function(String name) removeName,
  }) {
    return addNames(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addNames,
    TResult? Function(String name)? removeName,
  }) {
    return addNames?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addNames,
    TResult Function(String name)? removeName,
    required TResult orElse(),
  }) {
    if (addNames != null) {
      return addNames(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedEventFindNames value) findNames,
    required TResult Function(_BlocFreezedEventAddNames value) addNames,
    required TResult Function(_BlocFreezedEventRemoveName value) removeName,
  }) {
    return addNames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedEventFindNames value)? findNames,
    TResult? Function(_BlocFreezedEventAddNames value)? addNames,
    TResult? Function(_BlocFreezedEventRemoveName value)? removeName,
  }) {
    return addNames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedEventFindNames value)? findNames,
    TResult Function(_BlocFreezedEventAddNames value)? addNames,
    TResult Function(_BlocFreezedEventRemoveName value)? removeName,
    required TResult orElse(),
  }) {
    if (addNames != null) {
      return addNames(this);
    }
    return orElse();
  }
}

abstract class _BlocFreezedEventAddNames implements BlocFreezedEvent {
  const factory _BlocFreezedEventAddNames(final String name) =
      _$BlocFreezedEventAddNamesImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$BlocFreezedEventAddNamesImplCopyWith<_$BlocFreezedEventAddNamesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BlocFreezedEventRemoveNameImplCopyWith<$Res> {
  factory _$$BlocFreezedEventRemoveNameImplCopyWith(
          _$BlocFreezedEventRemoveNameImpl value,
          $Res Function(_$BlocFreezedEventRemoveNameImpl) then) =
      __$$BlocFreezedEventRemoveNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$BlocFreezedEventRemoveNameImplCopyWithImpl<$Res>
    extends _$BlocFreezedEventCopyWithImpl<$Res,
        _$BlocFreezedEventRemoveNameImpl>
    implements _$$BlocFreezedEventRemoveNameImplCopyWith<$Res> {
  __$$BlocFreezedEventRemoveNameImplCopyWithImpl(
      _$BlocFreezedEventRemoveNameImpl _value,
      $Res Function(_$BlocFreezedEventRemoveNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BlocFreezedEventRemoveNameImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BlocFreezedEventRemoveNameImpl implements _BlocFreezedEventRemoveName {
  const _$BlocFreezedEventRemoveNameImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'BlocFreezedEvent.removeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocFreezedEventRemoveNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocFreezedEventRemoveNameImplCopyWith<_$BlocFreezedEventRemoveNameImpl>
      get copyWith => __$$BlocFreezedEventRemoveNameImplCopyWithImpl<
          _$BlocFreezedEventRemoveNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findNames,
    required TResult Function(String name) addNames,
    required TResult Function(String name) removeName,
  }) {
    return removeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findNames,
    TResult? Function(String name)? addNames,
    TResult? Function(String name)? removeName,
  }) {
    return removeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findNames,
    TResult Function(String name)? addNames,
    TResult Function(String name)? removeName,
    required TResult orElse(),
  }) {
    if (removeName != null) {
      return removeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedEventFindNames value) findNames,
    required TResult Function(_BlocFreezedEventAddNames value) addNames,
    required TResult Function(_BlocFreezedEventRemoveName value) removeName,
  }) {
    return removeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedEventFindNames value)? findNames,
    TResult? Function(_BlocFreezedEventAddNames value)? addNames,
    TResult? Function(_BlocFreezedEventRemoveName value)? removeName,
  }) {
    return removeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedEventFindNames value)? findNames,
    TResult Function(_BlocFreezedEventAddNames value)? addNames,
    TResult Function(_BlocFreezedEventRemoveName value)? removeName,
    required TResult orElse(),
  }) {
    if (removeName != null) {
      return removeName(this);
    }
    return orElse();
  }
}

abstract class _BlocFreezedEventRemoveName implements BlocFreezedEvent {
  const factory _BlocFreezedEventRemoveName(final String name) =
      _$BlocFreezedEventRemoveNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$BlocFreezedEventRemoveNameImplCopyWith<_$BlocFreezedEventRemoveNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlocFreezedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedStateInitial value) initial,
    required TResult Function(_BlocFreezedStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedStateInitial value)? initial,
    TResult? Function(_BlocFreezedStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedStateInitial value)? initial,
    TResult Function(_BlocFreezedStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocFreezedStateCopyWith<$Res> {
  factory $BlocFreezedStateCopyWith(
          BlocFreezedState value, $Res Function(BlocFreezedState) then) =
      _$BlocFreezedStateCopyWithImpl<$Res, BlocFreezedState>;
}

/// @nodoc
class _$BlocFreezedStateCopyWithImpl<$Res, $Val extends BlocFreezedState>
    implements $BlocFreezedStateCopyWith<$Res> {
  _$BlocFreezedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocFreezedStateInitialImplCopyWith<$Res> {
  factory _$$BlocFreezedStateInitialImplCopyWith(
          _$BlocFreezedStateInitialImpl value,
          $Res Function(_$BlocFreezedStateInitialImpl) then) =
      __$$BlocFreezedStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlocFreezedStateInitialImplCopyWithImpl<$Res>
    extends _$BlocFreezedStateCopyWithImpl<$Res, _$BlocFreezedStateInitialImpl>
    implements _$$BlocFreezedStateInitialImplCopyWith<$Res> {
  __$$BlocFreezedStateInitialImplCopyWithImpl(
      _$BlocFreezedStateInitialImpl _value,
      $Res Function(_$BlocFreezedStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BlocFreezedStateInitialImpl implements _BlocFreezedStateInitial {
  _$BlocFreezedStateInitialImpl();

  @override
  String toString() {
    return 'BlocFreezedState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocFreezedStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedStateInitial value) initial,
    required TResult Function(_BlocFreezedStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedStateInitial value)? initial,
    TResult? Function(_BlocFreezedStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedStateInitial value)? initial,
    TResult Function(_BlocFreezedStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BlocFreezedStateInitial implements BlocFreezedState {
  factory _BlocFreezedStateInitial() = _$BlocFreezedStateInitialImpl;
}

/// @nodoc
abstract class _$$BlocFreezedStateDataImplCopyWith<$Res> {
  factory _$$BlocFreezedStateDataImplCopyWith(_$BlocFreezedStateDataImpl value,
          $Res Function(_$BlocFreezedStateDataImpl) then) =
      __$$BlocFreezedStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> names});
}

/// @nodoc
class __$$BlocFreezedStateDataImplCopyWithImpl<$Res>
    extends _$BlocFreezedStateCopyWithImpl<$Res, _$BlocFreezedStateDataImpl>
    implements _$$BlocFreezedStateDataImplCopyWith<$Res> {
  __$$BlocFreezedStateDataImplCopyWithImpl(_$BlocFreezedStateDataImpl _value,
      $Res Function(_$BlocFreezedStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? names = null,
  }) {
    return _then(_$BlocFreezedStateDataImpl(
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$BlocFreezedStateDataImpl implements _BlocFreezedStateData {
  _$BlocFreezedStateDataImpl({required final List<String> names})
      : _names = names;

  final List<String> _names;
  @override
  List<String> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'BlocFreezedState.data(names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocFreezedStateDataImpl &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_names));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocFreezedStateDataImplCopyWith<_$BlocFreezedStateDataImpl>
      get copyWith =>
          __$$BlocFreezedStateDataImplCopyWithImpl<_$BlocFreezedStateDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> names) data,
  }) {
    return data(names);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> names)? data,
  }) {
    return data?.call(names);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> names)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(names);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlocFreezedStateInitial value) initial,
    required TResult Function(_BlocFreezedStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlocFreezedStateInitial value)? initial,
    TResult? Function(_BlocFreezedStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlocFreezedStateInitial value)? initial,
    TResult Function(_BlocFreezedStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _BlocFreezedStateData implements BlocFreezedState {
  factory _BlocFreezedStateData({required final List<String> names}) =
      _$BlocFreezedStateDataImpl;

  List<String> get names;
  @JsonKey(ignore: true)
  _$$BlocFreezedStateDataImplCopyWith<_$BlocFreezedStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
