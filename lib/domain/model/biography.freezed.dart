// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biography.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Biography _$BiographyFromJson(Map<String, dynamic> json) {
  return _Biography.fromJson(json);
}

/// @nodoc
mixin _$Biography {
  String get fullName => throw _privateConstructorUsedError;
  String get alterEgos => throw _privateConstructorUsedError;
  List<String> get aliases => throw _privateConstructorUsedError;
  String get placeOfBirth => throw _privateConstructorUsedError;
  String get firstAppearance => throw _privateConstructorUsedError;
  String get publisher => throw _privateConstructorUsedError;
  String get alignment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BiographyCopyWith<Biography> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiographyCopyWith<$Res> {
  factory $BiographyCopyWith(Biography value, $Res Function(Biography) then) =
      _$BiographyCopyWithImpl<$Res, Biography>;
  @useResult
  $Res call(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment});
}

/// @nodoc
class _$BiographyCopyWithImpl<$Res, $Val extends Biography>
    implements $BiographyCopyWith<$Res> {
  _$BiographyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? alterEgos = null,
    Object? aliases = null,
    Object? placeOfBirth = null,
    Object? firstAppearance = null,
    Object? publisher = null,
    Object? alignment = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      alterEgos: null == alterEgos
          ? _value.alterEgos
          : alterEgos // ignore: cast_nullable_to_non_nullable
              as String,
      aliases: null == aliases
          ? _value.aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      firstAppearance: null == firstAppearance
          ? _value.firstAppearance
          : firstAppearance // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BiographyCopyWith<$Res> implements $BiographyCopyWith<$Res> {
  factory _$$_BiographyCopyWith(
          _$_Biography value, $Res Function(_$_Biography) then) =
      __$$_BiographyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName,
      String alterEgos,
      List<String> aliases,
      String placeOfBirth,
      String firstAppearance,
      String publisher,
      String alignment});
}

/// @nodoc
class __$$_BiographyCopyWithImpl<$Res>
    extends _$BiographyCopyWithImpl<$Res, _$_Biography>
    implements _$$_BiographyCopyWith<$Res> {
  __$$_BiographyCopyWithImpl(
      _$_Biography _value, $Res Function(_$_Biography) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? alterEgos = null,
    Object? aliases = null,
    Object? placeOfBirth = null,
    Object? firstAppearance = null,
    Object? publisher = null,
    Object? alignment = null,
  }) {
    return _then(_$_Biography(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      alterEgos: null == alterEgos
          ? _value.alterEgos
          : alterEgos // ignore: cast_nullable_to_non_nullable
              as String,
      aliases: null == aliases
          ? _value._aliases
          : aliases // ignore: cast_nullable_to_non_nullable
              as List<String>,
      placeOfBirth: null == placeOfBirth
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      firstAppearance: null == firstAppearance
          ? _value.firstAppearance
          : firstAppearance // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      alignment: null == alignment
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Biography implements _Biography {
  const _$_Biography(
      {required this.fullName,
      required this.alterEgos,
      required final List<String> aliases,
      required this.placeOfBirth,
      required this.firstAppearance,
      required this.publisher,
      required this.alignment})
      : _aliases = aliases;

  factory _$_Biography.fromJson(Map<String, dynamic> json) =>
      _$$_BiographyFromJson(json);

  @override
  final String fullName;
  @override
  final String alterEgos;
  final List<String> _aliases;
  @override
  List<String> get aliases {
    if (_aliases is EqualUnmodifiableListView) return _aliases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aliases);
  }

  @override
  final String placeOfBirth;
  @override
  final String firstAppearance;
  @override
  final String publisher;
  @override
  final String alignment;

  @override
  String toString() {
    return 'Biography(fullName: $fullName, alterEgos: $alterEgos, aliases: $aliases, placeOfBirth: $placeOfBirth, firstAppearance: $firstAppearance, publisher: $publisher, alignment: $alignment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Biography &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.alterEgos, alterEgos) ||
                other.alterEgos == alterEgos) &&
            const DeepCollectionEquality().equals(other._aliases, _aliases) &&
            (identical(other.placeOfBirth, placeOfBirth) ||
                other.placeOfBirth == placeOfBirth) &&
            (identical(other.firstAppearance, firstAppearance) ||
                other.firstAppearance == firstAppearance) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      alterEgos,
      const DeepCollectionEquality().hash(_aliases),
      placeOfBirth,
      firstAppearance,
      publisher,
      alignment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BiographyCopyWith<_$_Biography> get copyWith =>
      __$$_BiographyCopyWithImpl<_$_Biography>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BiographyToJson(
      this,
    );
  }
}

abstract class _Biography implements Biography {
  const factory _Biography(
      {required final String fullName,
      required final String alterEgos,
      required final List<String> aliases,
      required final String placeOfBirth,
      required final String firstAppearance,
      required final String publisher,
      required final String alignment}) = _$_Biography;

  factory _Biography.fromJson(Map<String, dynamic> json) =
      _$_Biography.fromJson;

  @override
  String get fullName;
  @override
  String get alterEgos;
  @override
  List<String> get aliases;
  @override
  String get placeOfBirth;
  @override
  String get firstAppearance;
  @override
  String get publisher;
  @override
  String get alignment;
  @override
  @JsonKey(ignore: true)
  _$$_BiographyCopyWith<_$_Biography> get copyWith =>
      throw _privateConstructorUsedError;
}
