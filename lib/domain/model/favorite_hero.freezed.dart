// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteHero _$FavoriteHeroFromJson(Map<String, dynamic> json) {
  return _FavoriteHero.fromJson(json);
}

/// @nodoc
mixin _$FavoriteHero {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteHeroCopyWith<FavoriteHero> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteHeroCopyWith<$Res> {
  factory $FavoriteHeroCopyWith(
          FavoriteHero value, $Res Function(FavoriteHero) then) =
      _$FavoriteHeroCopyWithImpl<$Res, FavoriteHero>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$FavoriteHeroCopyWithImpl<$Res, $Val extends FavoriteHero>
    implements $FavoriteHeroCopyWith<$Res> {
  _$FavoriteHeroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteHeroCopyWith<$Res>
    implements $FavoriteHeroCopyWith<$Res> {
  factory _$$_FavoriteHeroCopyWith(
          _$_FavoriteHero value, $Res Function(_$_FavoriteHero) then) =
      __$$_FavoriteHeroCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$_FavoriteHeroCopyWithImpl<$Res>
    extends _$FavoriteHeroCopyWithImpl<$Res, _$_FavoriteHero>
    implements _$$_FavoriteHeroCopyWith<$Res> {
  __$$_FavoriteHeroCopyWithImpl(
      _$_FavoriteHero _value, $Res Function(_$_FavoriteHero) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_FavoriteHero(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteHero implements _FavoriteHero {
  const _$_FavoriteHero(
      {required this.id, required this.name, required this.imageUrl});

  factory _$_FavoriteHero.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteHeroFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FavoriteHero(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteHero &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteHeroCopyWith<_$_FavoriteHero> get copyWith =>
      __$$_FavoriteHeroCopyWithImpl<_$_FavoriteHero>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteHeroToJson(
      this,
    );
  }
}

abstract class _FavoriteHero implements FavoriteHero {
  const factory _FavoriteHero(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$_FavoriteHero;

  factory _FavoriteHero.fromJson(Map<String, dynamic> json) =
      _$_FavoriteHero.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteHeroCopyWith<_$_FavoriteHero> get copyWith =>
      throw _privateConstructorUsedError;
}
