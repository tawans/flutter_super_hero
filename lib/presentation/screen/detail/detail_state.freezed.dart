// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailState _$DetailStateFromJson(Map<String, dynamic> json) {
  return _DetailState.fromJson(json);
}

/// @nodoc
mixin _$DetailState {
  SuperHero get hero => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isShowSnackBar => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {SuperHero hero,
      bool isFavorite,
      bool isLoading,
      bool isShowSnackBar,
      String message});

  $SuperHeroCopyWith<$Res> get hero;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero = null,
    Object? isFavorite = null,
    Object? isLoading = null,
    Object? isShowSnackBar = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      hero: null == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as SuperHero,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowSnackBar: null == isShowSnackBar
          ? _value.isShowSnackBar
          : isShowSnackBar // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuperHeroCopyWith<$Res> get hero {
    return $SuperHeroCopyWith<$Res>(_value.hero, (value) {
      return _then(_value.copyWith(hero: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailStateCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$_DetailStateCopyWith(
          _$_DetailState value, $Res Function(_$_DetailState) then) =
      __$$_DetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SuperHero hero,
      bool isFavorite,
      bool isLoading,
      bool isShowSnackBar,
      String message});

  @override
  $SuperHeroCopyWith<$Res> get hero;
}

/// @nodoc
class __$$_DetailStateCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$_DetailState>
    implements _$$_DetailStateCopyWith<$Res> {
  __$$_DetailStateCopyWithImpl(
      _$_DetailState _value, $Res Function(_$_DetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hero = null,
    Object? isFavorite = null,
    Object? isLoading = null,
    Object? isShowSnackBar = null,
    Object? message = null,
  }) {
    return _then(_$_DetailState(
      hero: null == hero
          ? _value.hero
          : hero // ignore: cast_nullable_to_non_nullable
              as SuperHero,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowSnackBar: null == isShowSnackBar
          ? _value.isShowSnackBar
          : isShowSnackBar // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailState with DiagnosticableTreeMixin implements _DetailState {
  const _$_DetailState(
      {this.hero = const SuperHero(
          id: '',
          name: '',
          powerstats: Powerstats(
              intelligence: '',
              strength: '',
              speed: '',
              durability: '',
              power: '',
              combat: ''),
          biography: Biography(
              fullName: '',
              alterEgos: '',
              aliases: [],
              placeOfBirth: '',
              firstAppearance: '',
              publisher: '',
              alignment: ''),
          appearance: Appearance(
              gender: '',
              race: '',
              height: [],
              weight: [],
              eyeColor: '',
              hairColor: ''),
          work: Work(occupation: '', base: ''),
          connections: Connections(groupAffiliation: '', relatives: ''),
          image: Image(url: '')),
      this.isFavorite = false,
      this.isLoading = false,
      this.isShowSnackBar = false,
      this.message = ''});

  factory _$_DetailState.fromJson(Map<String, dynamic> json) =>
      _$$_DetailStateFromJson(json);

  @override
  @JsonKey()
  final SuperHero hero;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isShowSnackBar;
  @override
  @JsonKey()
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailState(hero: $hero, isFavorite: $isFavorite, isLoading: $isLoading, isShowSnackBar: $isShowSnackBar, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailState'))
      ..add(DiagnosticsProperty('hero', hero))
      ..add(DiagnosticsProperty('isFavorite', isFavorite))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isShowSnackBar', isShowSnackBar))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailState &&
            (identical(other.hero, hero) || other.hero == hero) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isShowSnackBar, isShowSnackBar) ||
                other.isShowSnackBar == isShowSnackBar) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hero, isFavorite, isLoading, isShowSnackBar, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      __$$_DetailStateCopyWithImpl<_$_DetailState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailStateToJson(
      this,
    );
  }
}

abstract class _DetailState implements DetailState {
  const factory _DetailState(
      {final SuperHero hero,
      final bool isFavorite,
      final bool isLoading,
      final bool isShowSnackBar,
      final String message}) = _$_DetailState;

  factory _DetailState.fromJson(Map<String, dynamic> json) =
      _$_DetailState.fromJson;

  @override
  SuperHero get hero;
  @override
  bool get isFavorite;
  @override
  bool get isLoading;
  @override
  bool get isShowSnackBar;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DetailStateCopyWith<_$_DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
