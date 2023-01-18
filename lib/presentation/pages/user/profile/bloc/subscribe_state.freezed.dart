// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscribeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeStateLoading value) loading,
    required TResult Function(SubscribeStateSubscribed value) subscribed,
    required TResult Function(SubscribeStateUnsubscribed value) unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeStateLoading value)? loading,
    TResult? Function(SubscribeStateSubscribed value)? subscribed,
    TResult? Function(SubscribeStateUnsubscribed value)? unsubscribed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeStateLoading value)? loading,
    TResult Function(SubscribeStateSubscribed value)? subscribed,
    TResult Function(SubscribeStateUnsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeStateCopyWith<$Res> {
  factory $SubscribeStateCopyWith(
          SubscribeState value, $Res Function(SubscribeState) then) =
      _$SubscribeStateCopyWithImpl<$Res, SubscribeState>;
}

/// @nodoc
class _$SubscribeStateCopyWithImpl<$Res, $Val extends SubscribeState>
    implements $SubscribeStateCopyWith<$Res> {
  _$SubscribeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscribeStateLoadingCopyWith<$Res> {
  factory _$$SubscribeStateLoadingCopyWith(_$SubscribeStateLoading value,
          $Res Function(_$SubscribeStateLoading) then) =
      __$$SubscribeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeStateLoadingCopyWithImpl<$Res>
    extends _$SubscribeStateCopyWithImpl<$Res, _$SubscribeStateLoading>
    implements _$$SubscribeStateLoadingCopyWith<$Res> {
  __$$SubscribeStateLoadingCopyWithImpl(_$SubscribeStateLoading _value,
      $Res Function(_$SubscribeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscribeStateLoading implements SubscribeStateLoading {
  const _$SubscribeStateLoading();

  @override
  String toString() {
    return 'SubscribeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscribeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeStateLoading value) loading,
    required TResult Function(SubscribeStateSubscribed value) subscribed,
    required TResult Function(SubscribeStateUnsubscribed value) unsubscribed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeStateLoading value)? loading,
    TResult? Function(SubscribeStateSubscribed value)? subscribed,
    TResult? Function(SubscribeStateUnsubscribed value)? unsubscribed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeStateLoading value)? loading,
    TResult Function(SubscribeStateSubscribed value)? subscribed,
    TResult Function(SubscribeStateUnsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SubscribeStateLoading implements SubscribeState {
  const factory SubscribeStateLoading() = _$SubscribeStateLoading;
}

/// @nodoc
abstract class _$$SubscribeStateSubscribedCopyWith<$Res> {
  factory _$$SubscribeStateSubscribedCopyWith(_$SubscribeStateSubscribed value,
          $Res Function(_$SubscribeStateSubscribed) then) =
      __$$SubscribeStateSubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeStateSubscribedCopyWithImpl<$Res>
    extends _$SubscribeStateCopyWithImpl<$Res, _$SubscribeStateSubscribed>
    implements _$$SubscribeStateSubscribedCopyWith<$Res> {
  __$$SubscribeStateSubscribedCopyWithImpl(_$SubscribeStateSubscribed _value,
      $Res Function(_$SubscribeStateSubscribed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscribeStateSubscribed implements SubscribeStateSubscribed {
  const _$SubscribeStateSubscribed();

  @override
  String toString() {
    return 'SubscribeState.subscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeStateSubscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
  }) {
    return subscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
  }) {
    return subscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeStateLoading value) loading,
    required TResult Function(SubscribeStateSubscribed value) subscribed,
    required TResult Function(SubscribeStateUnsubscribed value) unsubscribed,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeStateLoading value)? loading,
    TResult? Function(SubscribeStateSubscribed value)? subscribed,
    TResult? Function(SubscribeStateUnsubscribed value)? unsubscribed,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeStateLoading value)? loading,
    TResult Function(SubscribeStateSubscribed value)? subscribed,
    TResult Function(SubscribeStateUnsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class SubscribeStateSubscribed implements SubscribeState {
  const factory SubscribeStateSubscribed() = _$SubscribeStateSubscribed;
}

/// @nodoc
abstract class _$$SubscribeStateUnsubscribedCopyWith<$Res> {
  factory _$$SubscribeStateUnsubscribedCopyWith(
          _$SubscribeStateUnsubscribed value,
          $Res Function(_$SubscribeStateUnsubscribed) then) =
      __$$SubscribeStateUnsubscribedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeStateUnsubscribedCopyWithImpl<$Res>
    extends _$SubscribeStateCopyWithImpl<$Res, _$SubscribeStateUnsubscribed>
    implements _$$SubscribeStateUnsubscribedCopyWith<$Res> {
  __$$SubscribeStateUnsubscribedCopyWithImpl(
      _$SubscribeStateUnsubscribed _value,
      $Res Function(_$SubscribeStateUnsubscribed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscribeStateUnsubscribed implements SubscribeStateUnsubscribed {
  const _$SubscribeStateUnsubscribed();

  @override
  String toString() {
    return 'SubscribeState.unsubscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeStateUnsubscribed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
  }) {
    return unsubscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
  }) {
    return unsubscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeStateLoading value) loading,
    required TResult Function(SubscribeStateSubscribed value) subscribed,
    required TResult Function(SubscribeStateUnsubscribed value) unsubscribed,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeStateLoading value)? loading,
    TResult? Function(SubscribeStateSubscribed value)? subscribed,
    TResult? Function(SubscribeStateUnsubscribed value)? unsubscribed,
  }) {
    return unsubscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeStateLoading value)? loading,
    TResult Function(SubscribeStateSubscribed value)? subscribed,
    TResult Function(SubscribeStateUnsubscribed value)? unsubscribed,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class SubscribeStateUnsubscribed implements SubscribeState {
  const factory SubscribeStateUnsubscribed() = _$SubscribeStateUnsubscribed;
}
