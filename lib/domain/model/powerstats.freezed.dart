// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'powerstats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Powerstats _$PowerstatsFromJson(Map<String, dynamic> json) {
  return _Powerstats.fromJson(json);
}

/// @nodoc
mixin _$Powerstats {
  String get intelligence => throw _privateConstructorUsedError;
  String get strength => throw _privateConstructorUsedError;
  String get speed => throw _privateConstructorUsedError;
  String get durability => throw _privateConstructorUsedError;
  String get power => throw _privateConstructorUsedError;
  String get combat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowerstatsCopyWith<Powerstats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerstatsCopyWith<$Res> {
  factory $PowerstatsCopyWith(
          Powerstats value, $Res Function(Powerstats) then) =
      _$PowerstatsCopyWithImpl<$Res, Powerstats>;
  @useResult
  $Res call(
      {String intelligence,
      String strength,
      String speed,
      String durability,
      String power,
      String combat});
}

/// @nodoc
class _$PowerstatsCopyWithImpl<$Res, $Val extends Powerstats>
    implements $PowerstatsCopyWith<$Res> {
  _$PowerstatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelligence = null,
    Object? strength = null,
    Object? speed = null,
    Object? durability = null,
    Object? power = null,
    Object? combat = null,
  }) {
    return _then(_value.copyWith(
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String,
      combat: null == combat
          ? _value.combat
          : combat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PowerstatsCopyWith<$Res>
    implements $PowerstatsCopyWith<$Res> {
  factory _$$_PowerstatsCopyWith(
          _$_Powerstats value, $Res Function(_$_Powerstats) then) =
      __$$_PowerstatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String intelligence,
      String strength,
      String speed,
      String durability,
      String power,
      String combat});
}

/// @nodoc
class __$$_PowerstatsCopyWithImpl<$Res>
    extends _$PowerstatsCopyWithImpl<$Res, _$_Powerstats>
    implements _$$_PowerstatsCopyWith<$Res> {
  __$$_PowerstatsCopyWithImpl(
      _$_Powerstats _value, $Res Function(_$_Powerstats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intelligence = null,
    Object? strength = null,
    Object? speed = null,
    Object? durability = null,
    Object? power = null,
    Object? combat = null,
  }) {
    return _then(_$_Powerstats(
      intelligence: null == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as String,
      strength: null == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as String,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      durability: null == durability
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String,
      combat: null == combat
          ? _value.combat
          : combat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Powerstats implements _Powerstats {
  const _$_Powerstats(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  factory _$_Powerstats.fromJson(Map<String, dynamic> json) =>
      _$$_PowerstatsFromJson(json);

  @override
  final String intelligence;
  @override
  final String strength;
  @override
  final String speed;
  @override
  final String durability;
  @override
  final String power;
  @override
  final String combat;

  @override
  String toString() {
    return 'Powerstats(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Powerstats &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.strength, strength) ||
                other.strength == strength) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.durability, durability) ||
                other.durability == durability) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.combat, combat) || other.combat == combat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, intelligence, strength, speed, durability, power, combat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowerstatsCopyWith<_$_Powerstats> get copyWith =>
      __$$_PowerstatsCopyWithImpl<_$_Powerstats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowerstatsToJson(
      this,
    );
  }
}

abstract class _Powerstats implements Powerstats {
  const factory _Powerstats(
      {required final String intelligence,
      required final String strength,
      required final String speed,
      required final String durability,
      required final String power,
      required final String combat}) = _$_Powerstats;

  factory _Powerstats.fromJson(Map<String, dynamic> json) =
      _$_Powerstats.fromJson;

  @override
  String get intelligence;
  @override
  String get strength;
  @override
  String get speed;
  @override
  String get durability;
  @override
  String get power;
  @override
  String get combat;
  @override
  @JsonKey(ignore: true)
  _$$_PowerstatsCopyWith<_$_Powerstats> get copyWith =>
      throw _privateConstructorUsedError;
}
