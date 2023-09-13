// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Connections _$ConnectionsFromJson(Map<String, dynamic> json) {
  return _Connections.fromJson(json);
}

/// @nodoc
mixin _$Connections {
  String get groupAffiliation => throw _privateConstructorUsedError;
  String get relatives => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionsCopyWith<Connections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionsCopyWith<$Res> {
  factory $ConnectionsCopyWith(
          Connections value, $Res Function(Connections) then) =
      _$ConnectionsCopyWithImpl<$Res, Connections>;
  @useResult
  $Res call({String groupAffiliation, String relatives});
}

/// @nodoc
class _$ConnectionsCopyWithImpl<$Res, $Val extends Connections>
    implements $ConnectionsCopyWith<$Res> {
  _$ConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupAffiliation = null,
    Object? relatives = null,
  }) {
    return _then(_value.copyWith(
      groupAffiliation: null == groupAffiliation
          ? _value.groupAffiliation
          : groupAffiliation // ignore: cast_nullable_to_non_nullable
              as String,
      relatives: null == relatives
          ? _value.relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionsCopyWith<$Res>
    implements $ConnectionsCopyWith<$Res> {
  factory _$$_ConnectionsCopyWith(
          _$_Connections value, $Res Function(_$_Connections) then) =
      __$$_ConnectionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupAffiliation, String relatives});
}

/// @nodoc
class __$$_ConnectionsCopyWithImpl<$Res>
    extends _$ConnectionsCopyWithImpl<$Res, _$_Connections>
    implements _$$_ConnectionsCopyWith<$Res> {
  __$$_ConnectionsCopyWithImpl(
      _$_Connections _value, $Res Function(_$_Connections) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupAffiliation = null,
    Object? relatives = null,
  }) {
    return _then(_$_Connections(
      groupAffiliation: null == groupAffiliation
          ? _value.groupAffiliation
          : groupAffiliation // ignore: cast_nullable_to_non_nullable
              as String,
      relatives: null == relatives
          ? _value.relatives
          : relatives // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Connections implements _Connections {
  const _$_Connections(
      {required this.groupAffiliation, required this.relatives});

  factory _$_Connections.fromJson(Map<String, dynamic> json) =>
      _$$_ConnectionsFromJson(json);

  @override
  final String groupAffiliation;
  @override
  final String relatives;

  @override
  String toString() {
    return 'Connections(groupAffiliation: $groupAffiliation, relatives: $relatives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connections &&
            (identical(other.groupAffiliation, groupAffiliation) ||
                other.groupAffiliation == groupAffiliation) &&
            (identical(other.relatives, relatives) ||
                other.relatives == relatives));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupAffiliation, relatives);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionsCopyWith<_$_Connections> get copyWith =>
      __$$_ConnectionsCopyWithImpl<_$_Connections>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnectionsToJson(
      this,
    );
  }
}

abstract class _Connections implements Connections {
  const factory _Connections(
      {required final String groupAffiliation,
      required final String relatives}) = _$_Connections;

  factory _Connections.fromJson(Map<String, dynamic> json) =
      _$_Connections.fromJson;

  @override
  String get groupAffiliation;
  @override
  String get relatives;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionsCopyWith<_$_Connections> get copyWith =>
      throw _privateConstructorUsedError;
}
