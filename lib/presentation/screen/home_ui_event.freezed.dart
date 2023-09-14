// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function()? endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(EndLoading value)? endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiEventCopyWith<$Res> {
  factory $HomeUiEventCopyWith(
          HomeUiEvent value, $Res Function(HomeUiEvent) then) =
      _$HomeUiEventCopyWithImpl<$Res, HomeUiEvent>;
}

/// @nodoc
class _$HomeUiEventCopyWithImpl<$Res, $Val extends HomeUiEvent>
    implements $HomeUiEventCopyWith<$Res> {
  _$HomeUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowSnackBarCopyWith<$Res> {
  factory _$$ShowSnackBarCopyWith(
          _$ShowSnackBar value, $Res Function(_$ShowSnackBar) then) =
      __$$ShowSnackBarCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarCopyWithImpl<$Res>
    extends _$HomeUiEventCopyWithImpl<$Res, _$ShowSnackBar>
    implements _$$ShowSnackBarCopyWith<$Res> {
  __$$ShowSnackBarCopyWithImpl(
      _$ShowSnackBar _value, $Res Function(_$ShowSnackBar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBar(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar with DiagnosticableTreeMixin implements ShowSnackBar {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.showSnackBar(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeUiEvent.showSnackBar'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBar &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      __$$ShowSnackBarCopyWithImpl<_$ShowSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function()? endLoading,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(EndLoading value)? endLoading,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar implements HomeUiEvent {
  const factory ShowSnackBar(final String message) = _$ShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarCopyWith<_$ShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndLoadingCopyWith<$Res> {
  factory _$$EndLoadingCopyWith(
          _$EndLoading value, $Res Function(_$EndLoading) then) =
      __$$EndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndLoadingCopyWithImpl<$Res>
    extends _$HomeUiEventCopyWithImpl<$Res, _$EndLoading>
    implements _$$EndLoadingCopyWith<$Res> {
  __$$EndLoadingCopyWithImpl(
      _$EndLoading _value, $Res Function(_$EndLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndLoading with DiagnosticableTreeMixin implements EndLoading {
  const _$EndLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeUiEvent.endLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeUiEvent.endLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) {
    return endLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackBar,
    TResult? Function()? endLoading,
  }) {
    return endLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) {
    return endLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBar value)? showSnackBar,
    TResult? Function(EndLoading value)? endLoading,
  }) {
    return endLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading(this);
    }
    return orElse();
  }
}

abstract class EndLoading implements HomeUiEvent {
  const factory EndLoading() = _$EndLoading;
}
