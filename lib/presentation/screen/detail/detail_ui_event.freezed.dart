// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailUiEvent {
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
    required TResult Function(ShowSnackBarDetail value) showSnackBar,
    required TResult Function(EndLoadingDetail value) endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarDetail value)? showSnackBar,
    TResult? Function(EndLoadingDetail value)? endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarDetail value)? showSnackBar,
    TResult Function(EndLoadingDetail value)? endLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailUiEventCopyWith<$Res> {
  factory $DetailUiEventCopyWith(
          DetailUiEvent value, $Res Function(DetailUiEvent) then) =
      _$DetailUiEventCopyWithImpl<$Res, DetailUiEvent>;
}

/// @nodoc
class _$DetailUiEventCopyWithImpl<$Res, $Val extends DetailUiEvent>
    implements $DetailUiEventCopyWith<$Res> {
  _$DetailUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowSnackBarDetailCopyWith<$Res> {
  factory _$$ShowSnackBarDetailCopyWith(_$ShowSnackBarDetail value,
          $Res Function(_$ShowSnackBarDetail) then) =
      __$$ShowSnackBarDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarDetailCopyWithImpl<$Res>
    extends _$DetailUiEventCopyWithImpl<$Res, _$ShowSnackBarDetail>
    implements _$$ShowSnackBarDetailCopyWith<$Res> {
  __$$ShowSnackBarDetailCopyWithImpl(
      _$ShowSnackBarDetail _value, $Res Function(_$ShowSnackBarDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBarDetail(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarDetail
    with DiagnosticableTreeMixin
    implements ShowSnackBarDetail {
  const _$ShowSnackBarDetail(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailUiEvent.showSnackBar(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailUiEvent.showSnackBar'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarDetail &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarDetailCopyWith<_$ShowSnackBarDetail> get copyWith =>
      __$$ShowSnackBarDetailCopyWithImpl<_$ShowSnackBarDetail>(
          this, _$identity);

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
    required TResult Function(ShowSnackBarDetail value) showSnackBar,
    required TResult Function(EndLoadingDetail value) endLoading,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarDetail value)? showSnackBar,
    TResult? Function(EndLoadingDetail value)? endLoading,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarDetail value)? showSnackBar,
    TResult Function(EndLoadingDetail value)? endLoading,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBarDetail implements DetailUiEvent {
  const factory ShowSnackBarDetail(final String message) = _$ShowSnackBarDetail;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarDetailCopyWith<_$ShowSnackBarDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndLoadingDetailCopyWith<$Res> {
  factory _$$EndLoadingDetailCopyWith(
          _$EndLoadingDetail value, $Res Function(_$EndLoadingDetail) then) =
      __$$EndLoadingDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndLoadingDetailCopyWithImpl<$Res>
    extends _$DetailUiEventCopyWithImpl<$Res, _$EndLoadingDetail>
    implements _$$EndLoadingDetailCopyWith<$Res> {
  __$$EndLoadingDetailCopyWithImpl(
      _$EndLoadingDetail _value, $Res Function(_$EndLoadingDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndLoadingDetail
    with DiagnosticableTreeMixin
    implements EndLoadingDetail {
  const _$EndLoadingDetail();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailUiEvent.endLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailUiEvent.endLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndLoadingDetail);
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
    required TResult Function(ShowSnackBarDetail value) showSnackBar,
    required TResult Function(EndLoadingDetail value) endLoading,
  }) {
    return endLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowSnackBarDetail value)? showSnackBar,
    TResult? Function(EndLoadingDetail value)? endLoading,
  }) {
    return endLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBarDetail value)? showSnackBar,
    TResult Function(EndLoadingDetail value)? endLoading,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading(this);
    }
    return orElse();
  }
}

abstract class EndLoadingDetail implements DetailUiEvent {
  const factory EndLoadingDetail() = _$EndLoadingDetail;
}
