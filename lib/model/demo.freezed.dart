// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Demo _$DemoFromJson(Map<String, dynamic> json) {
  return _Demo.fromJson(json);
}

/// @nodoc
mixin _$Demo {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DemoCopyWith<Demo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoCopyWith<$Res> {
  factory $DemoCopyWith(Demo value, $Res Function(Demo) then) =
      _$DemoCopyWithImpl<$Res, Demo>;
  @useResult
  $Res call({String name, String description, String image, String url});
}

/// @nodoc
class _$DemoCopyWithImpl<$Res, $Val extends Demo>
    implements $DemoCopyWith<$Res> {
  _$DemoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DemoCopyWith<$Res> implements $DemoCopyWith<$Res> {
  factory _$$_DemoCopyWith(_$_Demo value, $Res Function(_$_Demo) then) =
      __$$_DemoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, String image, String url});
}

/// @nodoc
class __$$_DemoCopyWithImpl<$Res> extends _$DemoCopyWithImpl<$Res, _$_Demo>
    implements _$$_DemoCopyWith<$Res> {
  __$$_DemoCopyWithImpl(_$_Demo _value, $Res Function(_$_Demo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? url = null,
  }) {
    return _then(_$_Demo(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Demo implements _Demo {
  _$_Demo(this.name, this.description, this.image, this.url);

  factory _$_Demo.fromJson(Map<String, dynamic> json) => _$$_DemoFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final String url;

  @override
  String toString() {
    return 'Demo(name: $name, description: $description, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Demo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, image, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DemoCopyWith<_$_Demo> get copyWith =>
      __$$_DemoCopyWithImpl<_$_Demo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DemoToJson(
      this,
    );
  }
}

abstract class _Demo implements Demo {
  factory _Demo(final String name, final String description, final String image,
      final String url) = _$_Demo;

  factory _Demo.fromJson(Map<String, dynamic> json) = _$_Demo.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_DemoCopyWith<_$_Demo> get copyWith => throw _privateConstructorUsedError;
}
