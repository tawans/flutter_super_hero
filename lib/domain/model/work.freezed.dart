// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
mixin _$Work {
  String get occupation => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res, Work>;
  @useResult
  $Res call({String occupation, String base});
}

/// @nodoc
class _$WorkCopyWithImpl<$Res, $Val extends Work>
    implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occupation = null,
    Object? base = null,
  }) {
    return _then(_value.copyWith(
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$$_WorkCopyWith(_$_Work value, $Res Function(_$_Work) then) =
      __$$_WorkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String occupation, String base});
}

/// @nodoc
class __$$_WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res, _$_Work>
    implements _$$_WorkCopyWith<$Res> {
  __$$_WorkCopyWithImpl(_$_Work _value, $Res Function(_$_Work) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occupation = null,
    Object? base = null,
  }) {
    return _then(_$_Work(
      occupation: null == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Work implements _Work {
  const _$_Work({required this.occupation, required this.base});

  factory _$_Work.fromJson(Map<String, dynamic> json) => _$$_WorkFromJson(json);

  @override
  final String occupation;
  @override
  final String base;

  @override
  String toString() {
    return 'Work(occupation: $occupation, base: $base)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Work &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.base, base) || other.base == base));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, occupation, base);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkCopyWith<_$_Work> get copyWith =>
      __$$_WorkCopyWithImpl<_$_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkToJson(
      this,
    );
  }
}

abstract class _Work implements Work {
  const factory _Work(
      {required final String occupation, required final String base}) = _$_Work;

  factory _Work.fromJson(Map<String, dynamic> json) = _$_Work.fromJson;

  @override
  String get occupation;
  @override
  String get base;
  @override
  @JsonKey(ignore: true)
  _$$_WorkCopyWith<_$_Work> get copyWith => throw _privateConstructorUsedError;
}
