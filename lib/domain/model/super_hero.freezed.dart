// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuperHero _$SuperHeroFromJson(Map<String, dynamic> json) {
  return _SuperHero.fromJson(json);
}

/// @nodoc
mixin _$SuperHero {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Powerstats get powerstats => throw _privateConstructorUsedError;
  Biography get biography => throw _privateConstructorUsedError;
  Appearance get appearance => throw _privateConstructorUsedError;
  Work get work => throw _privateConstructorUsedError;
  Connections get connections => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperHeroCopyWith<SuperHero> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperHeroCopyWith<$Res> {
  factory $SuperHeroCopyWith(SuperHero value, $Res Function(SuperHero) then) =
      _$SuperHeroCopyWithImpl<$Res, SuperHero>;
  @useResult
  $Res call(
      {String id,
      String name,
      Powerstats powerstats,
      Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      Image image});

  $PowerstatsCopyWith<$Res> get powerstats;
  $BiographyCopyWith<$Res> get biography;
  $AppearanceCopyWith<$Res> get appearance;
  $WorkCopyWith<$Res> get work;
  $ConnectionsCopyWith<$Res> get connections;
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$SuperHeroCopyWithImpl<$Res, $Val extends SuperHero>
    implements $SuperHeroCopyWith<$Res> {
  _$SuperHeroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? powerstats = null,
    Object? biography = null,
    Object? appearance = null,
    Object? work = null,
    Object? connections = null,
    Object? image = null,
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
      powerstats: null == powerstats
          ? _value.powerstats
          : powerstats // ignore: cast_nullable_to_non_nullable
              as Powerstats,
      biography: null == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as Biography,
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as Appearance,
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as Connections,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PowerstatsCopyWith<$Res> get powerstats {
    return $PowerstatsCopyWith<$Res>(_value.powerstats, (value) {
      return _then(_value.copyWith(powerstats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BiographyCopyWith<$Res> get biography {
    return $BiographyCopyWith<$Res>(_value.biography, (value) {
      return _then(_value.copyWith(biography: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppearanceCopyWith<$Res> get appearance {
    return $AppearanceCopyWith<$Res>(_value.appearance, (value) {
      return _then(_value.copyWith(appearance: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConnectionsCopyWith<$Res> get connections {
    return $ConnectionsCopyWith<$Res>(_value.connections, (value) {
      return _then(_value.copyWith(connections: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SuperHeroCopyWith<$Res> implements $SuperHeroCopyWith<$Res> {
  factory _$$_SuperHeroCopyWith(
          _$_SuperHero value, $Res Function(_$_SuperHero) then) =
      __$$_SuperHeroCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Powerstats powerstats,
      Biography biography,
      Appearance appearance,
      Work work,
      Connections connections,
      Image image});

  @override
  $PowerstatsCopyWith<$Res> get powerstats;
  @override
  $BiographyCopyWith<$Res> get biography;
  @override
  $AppearanceCopyWith<$Res> get appearance;
  @override
  $WorkCopyWith<$Res> get work;
  @override
  $ConnectionsCopyWith<$Res> get connections;
  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_SuperHeroCopyWithImpl<$Res>
    extends _$SuperHeroCopyWithImpl<$Res, _$_SuperHero>
    implements _$$_SuperHeroCopyWith<$Res> {
  __$$_SuperHeroCopyWithImpl(
      _$_SuperHero _value, $Res Function(_$_SuperHero) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? powerstats = null,
    Object? biography = null,
    Object? appearance = null,
    Object? work = null,
    Object? connections = null,
    Object? image = null,
  }) {
    return _then(_$_SuperHero(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      powerstats: null == powerstats
          ? _value.powerstats
          : powerstats // ignore: cast_nullable_to_non_nullable
              as Powerstats,
      biography: null == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as Biography,
      appearance: null == appearance
          ? _value.appearance
          : appearance // ignore: cast_nullable_to_non_nullable
              as Appearance,
      work: null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as Connections,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuperHero implements _SuperHero {
  const _$_SuperHero(
      {required this.id,
      required this.name,
      required this.powerstats,
      required this.biography,
      required this.appearance,
      required this.work,
      required this.connections,
      required this.image});

  factory _$_SuperHero.fromJson(Map<String, dynamic> json) =>
      _$$_SuperHeroFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Powerstats powerstats;
  @override
  final Biography biography;
  @override
  final Appearance appearance;
  @override
  final Work work;
  @override
  final Connections connections;
  @override
  final Image image;

  @override
  String toString() {
    return 'SuperHero(id: $id, name: $name, powerstats: $powerstats, biography: $biography, appearance: $appearance, work: $work, connections: $connections, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuperHero &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.powerstats, powerstats) ||
                other.powerstats == powerstats) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.appearance, appearance) ||
                other.appearance == appearance) &&
            (identical(other.work, work) || other.work == work) &&
            (identical(other.connections, connections) ||
                other.connections == connections) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, powerstats, biography,
      appearance, work, connections, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuperHeroCopyWith<_$_SuperHero> get copyWith =>
      __$$_SuperHeroCopyWithImpl<_$_SuperHero>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuperHeroToJson(
      this,
    );
  }
}

abstract class _SuperHero implements SuperHero {
  const factory _SuperHero(
      {required final String id,
      required final String name,
      required final Powerstats powerstats,
      required final Biography biography,
      required final Appearance appearance,
      required final Work work,
      required final Connections connections,
      required final Image image}) = _$_SuperHero;

  factory _SuperHero.fromJson(Map<String, dynamic> json) =
      _$_SuperHero.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Powerstats get powerstats;
  @override
  Biography get biography;
  @override
  Appearance get appearance;
  @override
  Work get work;
  @override
  Connections get connections;
  @override
  Image get image;
  @override
  @JsonKey(ignore: true)
  _$$_SuperHeroCopyWith<_$_SuperHero> get copyWith =>
      throw _privateConstructorUsedError;
}
