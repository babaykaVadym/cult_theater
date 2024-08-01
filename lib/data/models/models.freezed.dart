// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return _Actor.fromJson(json);
}

/// @nodoc
mixin _$Actor {
  int? get thEmpId => throw _privateConstructorUsedError;
  String? get thEmpName => throw _privateConstructorUsedError;
  String? get thEmpDescription => throw _privateConstructorUsedError;
  String? get thEmpBiography => throw _privateConstructorUsedError;
  bool? get thEmpIsOwnTrope => throw _privateConstructorUsedError;
  int? get thEmpTypeId => throw _privateConstructorUsedError;
  String? get thEmpImageLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCopyWith<Actor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCopyWith<$Res> {
  factory $ActorCopyWith(Actor value, $Res Function(Actor) then) =
      _$ActorCopyWithImpl<$Res, Actor>;
  @useResult
  $Res call(
      {int? thEmpId,
      String? thEmpName,
      String? thEmpDescription,
      String? thEmpBiography,
      bool? thEmpIsOwnTrope,
      int? thEmpTypeId,
      String? thEmpImageLink});
}

/// @nodoc
class _$ActorCopyWithImpl<$Res, $Val extends Actor>
    implements $ActorCopyWith<$Res> {
  _$ActorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thEmpId = freezed,
    Object? thEmpName = freezed,
    Object? thEmpDescription = freezed,
    Object? thEmpBiography = freezed,
    Object? thEmpIsOwnTrope = freezed,
    Object? thEmpTypeId = freezed,
    Object? thEmpImageLink = freezed,
  }) {
    return _then(_value.copyWith(
      thEmpId: freezed == thEmpId
          ? _value.thEmpId
          : thEmpId // ignore: cast_nullable_to_non_nullable
              as int?,
      thEmpName: freezed == thEmpName
          ? _value.thEmpName
          : thEmpName // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpDescription: freezed == thEmpDescription
          ? _value.thEmpDescription
          : thEmpDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpBiography: freezed == thEmpBiography
          ? _value.thEmpBiography
          : thEmpBiography // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpIsOwnTrope: freezed == thEmpIsOwnTrope
          ? _value.thEmpIsOwnTrope
          : thEmpIsOwnTrope // ignore: cast_nullable_to_non_nullable
              as bool?,
      thEmpTypeId: freezed == thEmpTypeId
          ? _value.thEmpTypeId
          : thEmpTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      thEmpImageLink: freezed == thEmpImageLink
          ? _value.thEmpImageLink
          : thEmpImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorImplCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$$ActorImplCopyWith(
          _$ActorImpl value, $Res Function(_$ActorImpl) then) =
      __$$ActorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? thEmpId,
      String? thEmpName,
      String? thEmpDescription,
      String? thEmpBiography,
      bool? thEmpIsOwnTrope,
      int? thEmpTypeId,
      String? thEmpImageLink});
}

/// @nodoc
class __$$ActorImplCopyWithImpl<$Res>
    extends _$ActorCopyWithImpl<$Res, _$ActorImpl>
    implements _$$ActorImplCopyWith<$Res> {
  __$$ActorImplCopyWithImpl(
      _$ActorImpl _value, $Res Function(_$ActorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thEmpId = freezed,
    Object? thEmpName = freezed,
    Object? thEmpDescription = freezed,
    Object? thEmpBiography = freezed,
    Object? thEmpIsOwnTrope = freezed,
    Object? thEmpTypeId = freezed,
    Object? thEmpImageLink = freezed,
  }) {
    return _then(_$ActorImpl(
      thEmpId: freezed == thEmpId
          ? _value.thEmpId
          : thEmpId // ignore: cast_nullable_to_non_nullable
              as int?,
      thEmpName: freezed == thEmpName
          ? _value.thEmpName
          : thEmpName // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpDescription: freezed == thEmpDescription
          ? _value.thEmpDescription
          : thEmpDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpBiography: freezed == thEmpBiography
          ? _value.thEmpBiography
          : thEmpBiography // ignore: cast_nullable_to_non_nullable
              as String?,
      thEmpIsOwnTrope: freezed == thEmpIsOwnTrope
          ? _value.thEmpIsOwnTrope
          : thEmpIsOwnTrope // ignore: cast_nullable_to_non_nullable
              as bool?,
      thEmpTypeId: freezed == thEmpTypeId
          ? _value.thEmpTypeId
          : thEmpTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      thEmpImageLink: freezed == thEmpImageLink
          ? _value.thEmpImageLink
          : thEmpImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorImpl implements _Actor {
  const _$ActorImpl(
      {this.thEmpId,
      this.thEmpName,
      this.thEmpDescription,
      this.thEmpBiography,
      this.thEmpIsOwnTrope,
      this.thEmpTypeId,
      this.thEmpImageLink});

  factory _$ActorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorImplFromJson(json);

  @override
  final int? thEmpId;
  @override
  final String? thEmpName;
  @override
  final String? thEmpDescription;
  @override
  final String? thEmpBiography;
  @override
  final bool? thEmpIsOwnTrope;
  @override
  final int? thEmpTypeId;
  @override
  final String? thEmpImageLink;

  @override
  String toString() {
    return 'Actor(thEmpId: $thEmpId, thEmpName: $thEmpName, thEmpDescription: $thEmpDescription, thEmpBiography: $thEmpBiography, thEmpIsOwnTrope: $thEmpIsOwnTrope, thEmpTypeId: $thEmpTypeId, thEmpImageLink: $thEmpImageLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorImpl &&
            (identical(other.thEmpId, thEmpId) || other.thEmpId == thEmpId) &&
            (identical(other.thEmpName, thEmpName) ||
                other.thEmpName == thEmpName) &&
            (identical(other.thEmpDescription, thEmpDescription) ||
                other.thEmpDescription == thEmpDescription) &&
            (identical(other.thEmpBiography, thEmpBiography) ||
                other.thEmpBiography == thEmpBiography) &&
            (identical(other.thEmpIsOwnTrope, thEmpIsOwnTrope) ||
                other.thEmpIsOwnTrope == thEmpIsOwnTrope) &&
            (identical(other.thEmpTypeId, thEmpTypeId) ||
                other.thEmpTypeId == thEmpTypeId) &&
            (identical(other.thEmpImageLink, thEmpImageLink) ||
                other.thEmpImageLink == thEmpImageLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      thEmpId,
      thEmpName,
      thEmpDescription,
      thEmpBiography,
      thEmpIsOwnTrope,
      thEmpTypeId,
      thEmpImageLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      __$$ActorImplCopyWithImpl<_$ActorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorImplToJson(
      this,
    );
  }
}

abstract class _Actor implements Actor {
  const factory _Actor(
      {final int? thEmpId,
      final String? thEmpName,
      final String? thEmpDescription,
      final String? thEmpBiography,
      final bool? thEmpIsOwnTrope,
      final int? thEmpTypeId,
      final String? thEmpImageLink}) = _$ActorImpl;

  factory _Actor.fromJson(Map<String, dynamic> json) = _$ActorImpl.fromJson;

  @override
  int? get thEmpId;
  @override
  String? get thEmpName;
  @override
  String? get thEmpDescription;
  @override
  String? get thEmpBiography;
  @override
  bool? get thEmpIsOwnTrope;
  @override
  int? get thEmpTypeId;
  @override
  String? get thEmpImageLink;
  @override
  @JsonKey(ignore: true)
  _$$ActorImplCopyWith<_$ActorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AfishaModel _$AfishaModelFromJson(Map<String, dynamic> json) {
  return _AfishaModel.fromJson(json);
}

/// @nodoc
mixin _$AfishaModel {
  int? get evId => throw _privateConstructorUsedError;
  int? get evAdminId => throw _privateConstructorUsedError;
  int? get evHallId => throw _privateConstructorUsedError;
  String? get evTitle => throw _privateConstructorUsedError;
  String? get evDescription => throw _privateConstructorUsedError;
  String? get evImageLink => throw _privateConstructorUsedError;
  String? get evDatetime => throw _privateConstructorUsedError;
  String? get evCreatedDatetime => throw _privateConstructorUsedError;
  String? get evEditedDatetime => throw _privateConstructorUsedError;
  String? get evThumbImageLink => throw _privateConstructorUsedError;
  String? get evActorsCustom => throw _privateConstructorUsedError;
  String? get evDirectorCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
  Actor? get evDirector => throw _privateConstructorUsedError;
  int? get evDirectorId => throw _privateConstructorUsedError;
  int? get evMinAge => throw _privateConstructorUsedError;
  String? get evLanguage => throw _privateConstructorUsedError;
  int? get evDuration => throw _privateConstructorUsedError;
  String? get evGenre => throw _privateConstructorUsedError;
  bool? get evIsThirdPartySale => throw _privateConstructorUsedError;
  String? get evThirdPartySaleLink => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'evActors', fromJson: AfishaModel._actorsFromJson, defaultValue: [])
  List<Actor>? get evActors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AfishaModelCopyWith<AfishaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfishaModelCopyWith<$Res> {
  factory $AfishaModelCopyWith(
          AfishaModel value, $Res Function(AfishaModel) then) =
      _$AfishaModelCopyWithImpl<$Res, AfishaModel>;
  @useResult
  $Res call(
      {int? evId,
      int? evAdminId,
      int? evHallId,
      String? evTitle,
      String? evDescription,
      String? evImageLink,
      String? evDatetime,
      String? evCreatedDatetime,
      String? evEditedDatetime,
      String? evThumbImageLink,
      String? evActorsCustom,
      String? evDirectorCustom,
      @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
      Actor? evDirector,
      int? evDirectorId,
      int? evMinAge,
      String? evLanguage,
      int? evDuration,
      String? evGenre,
      bool? evIsThirdPartySale,
      String? evThirdPartySaleLink,
      @JsonKey(
          name: 'evActors',
          fromJson: AfishaModel._actorsFromJson,
          defaultValue: [])
      List<Actor>? evActors});

  $ActorCopyWith<$Res>? get evDirector;
}

/// @nodoc
class _$AfishaModelCopyWithImpl<$Res, $Val extends AfishaModel>
    implements $AfishaModelCopyWith<$Res> {
  _$AfishaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evId = freezed,
    Object? evAdminId = freezed,
    Object? evHallId = freezed,
    Object? evTitle = freezed,
    Object? evDescription = freezed,
    Object? evImageLink = freezed,
    Object? evDatetime = freezed,
    Object? evCreatedDatetime = freezed,
    Object? evEditedDatetime = freezed,
    Object? evThumbImageLink = freezed,
    Object? evActorsCustom = freezed,
    Object? evDirectorCustom = freezed,
    Object? evDirector = freezed,
    Object? evDirectorId = freezed,
    Object? evMinAge = freezed,
    Object? evLanguage = freezed,
    Object? evDuration = freezed,
    Object? evGenre = freezed,
    Object? evIsThirdPartySale = freezed,
    Object? evThirdPartySaleLink = freezed,
    Object? evActors = freezed,
  }) {
    return _then(_value.copyWith(
      evId: freezed == evId
          ? _value.evId
          : evId // ignore: cast_nullable_to_non_nullable
              as int?,
      evAdminId: freezed == evAdminId
          ? _value.evAdminId
          : evAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      evHallId: freezed == evHallId
          ? _value.evHallId
          : evHallId // ignore: cast_nullable_to_non_nullable
              as int?,
      evTitle: freezed == evTitle
          ? _value.evTitle
          : evTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      evDescription: freezed == evDescription
          ? _value.evDescription
          : evDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      evImageLink: freezed == evImageLink
          ? _value.evImageLink
          : evImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evDatetime: freezed == evDatetime
          ? _value.evDatetime
          : evDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evCreatedDatetime: freezed == evCreatedDatetime
          ? _value.evCreatedDatetime
          : evCreatedDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evEditedDatetime: freezed == evEditedDatetime
          ? _value.evEditedDatetime
          : evEditedDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evThumbImageLink: freezed == evThumbImageLink
          ? _value.evThumbImageLink
          : evThumbImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evActorsCustom: freezed == evActorsCustom
          ? _value.evActorsCustom
          : evActorsCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirectorCustom: freezed == evDirectorCustom
          ? _value.evDirectorCustom
          : evDirectorCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirector: freezed == evDirector
          ? _value.evDirector
          : evDirector // ignore: cast_nullable_to_non_nullable
              as Actor?,
      evDirectorId: freezed == evDirectorId
          ? _value.evDirectorId
          : evDirectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      evMinAge: freezed == evMinAge
          ? _value.evMinAge
          : evMinAge // ignore: cast_nullable_to_non_nullable
              as int?,
      evLanguage: freezed == evLanguage
          ? _value.evLanguage
          : evLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      evDuration: freezed == evDuration
          ? _value.evDuration
          : evDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evGenre: freezed == evGenre
          ? _value.evGenre
          : evGenre // ignore: cast_nullable_to_non_nullable
              as String?,
      evIsThirdPartySale: freezed == evIsThirdPartySale
          ? _value.evIsThirdPartySale
          : evIsThirdPartySale // ignore: cast_nullable_to_non_nullable
              as bool?,
      evThirdPartySaleLink: freezed == evThirdPartySaleLink
          ? _value.evThirdPartySaleLink
          : evThirdPartySaleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evActors: freezed == evActors
          ? _value.evActors
          : evActors // ignore: cast_nullable_to_non_nullable
              as List<Actor>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActorCopyWith<$Res>? get evDirector {
    if (_value.evDirector == null) {
      return null;
    }

    return $ActorCopyWith<$Res>(_value.evDirector!, (value) {
      return _then(_value.copyWith(evDirector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AfishaModelImplCopyWith<$Res>
    implements $AfishaModelCopyWith<$Res> {
  factory _$$AfishaModelImplCopyWith(
          _$AfishaModelImpl value, $Res Function(_$AfishaModelImpl) then) =
      __$$AfishaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? evId,
      int? evAdminId,
      int? evHallId,
      String? evTitle,
      String? evDescription,
      String? evImageLink,
      String? evDatetime,
      String? evCreatedDatetime,
      String? evEditedDatetime,
      String? evThumbImageLink,
      String? evActorsCustom,
      String? evDirectorCustom,
      @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
      Actor? evDirector,
      int? evDirectorId,
      int? evMinAge,
      String? evLanguage,
      int? evDuration,
      String? evGenre,
      bool? evIsThirdPartySale,
      String? evThirdPartySaleLink,
      @JsonKey(
          name: 'evActors',
          fromJson: AfishaModel._actorsFromJson,
          defaultValue: [])
      List<Actor>? evActors});

  @override
  $ActorCopyWith<$Res>? get evDirector;
}

/// @nodoc
class __$$AfishaModelImplCopyWithImpl<$Res>
    extends _$AfishaModelCopyWithImpl<$Res, _$AfishaModelImpl>
    implements _$$AfishaModelImplCopyWith<$Res> {
  __$$AfishaModelImplCopyWithImpl(
      _$AfishaModelImpl _value, $Res Function(_$AfishaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evId = freezed,
    Object? evAdminId = freezed,
    Object? evHallId = freezed,
    Object? evTitle = freezed,
    Object? evDescription = freezed,
    Object? evImageLink = freezed,
    Object? evDatetime = freezed,
    Object? evCreatedDatetime = freezed,
    Object? evEditedDatetime = freezed,
    Object? evThumbImageLink = freezed,
    Object? evActorsCustom = freezed,
    Object? evDirectorCustom = freezed,
    Object? evDirector = freezed,
    Object? evDirectorId = freezed,
    Object? evMinAge = freezed,
    Object? evLanguage = freezed,
    Object? evDuration = freezed,
    Object? evGenre = freezed,
    Object? evIsThirdPartySale = freezed,
    Object? evThirdPartySaleLink = freezed,
    Object? evActors = freezed,
  }) {
    return _then(_$AfishaModelImpl(
      evId: freezed == evId
          ? _value.evId
          : evId // ignore: cast_nullable_to_non_nullable
              as int?,
      evAdminId: freezed == evAdminId
          ? _value.evAdminId
          : evAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      evHallId: freezed == evHallId
          ? _value.evHallId
          : evHallId // ignore: cast_nullable_to_non_nullable
              as int?,
      evTitle: freezed == evTitle
          ? _value.evTitle
          : evTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      evDescription: freezed == evDescription
          ? _value.evDescription
          : evDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      evImageLink: freezed == evImageLink
          ? _value.evImageLink
          : evImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evDatetime: freezed == evDatetime
          ? _value.evDatetime
          : evDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evCreatedDatetime: freezed == evCreatedDatetime
          ? _value.evCreatedDatetime
          : evCreatedDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evEditedDatetime: freezed == evEditedDatetime
          ? _value.evEditedDatetime
          : evEditedDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evThumbImageLink: freezed == evThumbImageLink
          ? _value.evThumbImageLink
          : evThumbImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evActorsCustom: freezed == evActorsCustom
          ? _value.evActorsCustom
          : evActorsCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirectorCustom: freezed == evDirectorCustom
          ? _value.evDirectorCustom
          : evDirectorCustom // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirector: freezed == evDirector
          ? _value.evDirector
          : evDirector // ignore: cast_nullable_to_non_nullable
              as Actor?,
      evDirectorId: freezed == evDirectorId
          ? _value.evDirectorId
          : evDirectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      evMinAge: freezed == evMinAge
          ? _value.evMinAge
          : evMinAge // ignore: cast_nullable_to_non_nullable
              as int?,
      evLanguage: freezed == evLanguage
          ? _value.evLanguage
          : evLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      evDuration: freezed == evDuration
          ? _value.evDuration
          : evDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evGenre: freezed == evGenre
          ? _value.evGenre
          : evGenre // ignore: cast_nullable_to_non_nullable
              as String?,
      evIsThirdPartySale: freezed == evIsThirdPartySale
          ? _value.evIsThirdPartySale
          : evIsThirdPartySale // ignore: cast_nullable_to_non_nullable
              as bool?,
      evThirdPartySaleLink: freezed == evThirdPartySaleLink
          ? _value.evThirdPartySaleLink
          : evThirdPartySaleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evActors: freezed == evActors
          ? _value._evActors
          : evActors // ignore: cast_nullable_to_non_nullable
              as List<Actor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AfishaModelImpl implements _AfishaModel {
  const _$AfishaModelImpl(
      {this.evId,
      this.evAdminId,
      this.evHallId,
      this.evTitle,
      this.evDescription,
      this.evImageLink,
      this.evDatetime,
      this.evCreatedDatetime,
      this.evEditedDatetime,
      this.evThumbImageLink,
      this.evActorsCustom,
      this.evDirectorCustom,
      @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
      this.evDirector,
      this.evDirectorId,
      this.evMinAge,
      this.evLanguage,
      this.evDuration,
      this.evGenre,
      this.evIsThirdPartySale,
      this.evThirdPartySaleLink,
      @JsonKey(
          name: 'evActors',
          fromJson: AfishaModel._actorsFromJson,
          defaultValue: [])
      final List<Actor>? evActors})
      : _evActors = evActors;

  factory _$AfishaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AfishaModelImplFromJson(json);

  @override
  final int? evId;
  @override
  final int? evAdminId;
  @override
  final int? evHallId;
  @override
  final String? evTitle;
  @override
  final String? evDescription;
  @override
  final String? evImageLink;
  @override
  final String? evDatetime;
  @override
  final String? evCreatedDatetime;
  @override
  final String? evEditedDatetime;
  @override
  final String? evThumbImageLink;
  @override
  final String? evActorsCustom;
  @override
  final String? evDirectorCustom;
  @override
  @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
  final Actor? evDirector;
  @override
  final int? evDirectorId;
  @override
  final int? evMinAge;
  @override
  final String? evLanguage;
  @override
  final int? evDuration;
  @override
  final String? evGenre;
  @override
  final bool? evIsThirdPartySale;
  @override
  final String? evThirdPartySaleLink;
  final List<Actor>? _evActors;
  @override
  @JsonKey(
      name: 'evActors', fromJson: AfishaModel._actorsFromJson, defaultValue: [])
  List<Actor>? get evActors {
    final value = _evActors;
    if (value == null) return null;
    if (_evActors is EqualUnmodifiableListView) return _evActors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AfishaModel(evId: $evId, evAdminId: $evAdminId, evHallId: $evHallId, evTitle: $evTitle, evDescription: $evDescription, evImageLink: $evImageLink, evDatetime: $evDatetime, evCreatedDatetime: $evCreatedDatetime, evEditedDatetime: $evEditedDatetime, evThumbImageLink: $evThumbImageLink, evActorsCustom: $evActorsCustom, evDirectorCustom: $evDirectorCustom, evDirector: $evDirector, evDirectorId: $evDirectorId, evMinAge: $evMinAge, evLanguage: $evLanguage, evDuration: $evDuration, evGenre: $evGenre, evIsThirdPartySale: $evIsThirdPartySale, evThirdPartySaleLink: $evThirdPartySaleLink, evActors: $evActors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AfishaModelImpl &&
            (identical(other.evId, evId) || other.evId == evId) &&
            (identical(other.evAdminId, evAdminId) ||
                other.evAdminId == evAdminId) &&
            (identical(other.evHallId, evHallId) ||
                other.evHallId == evHallId) &&
            (identical(other.evTitle, evTitle) || other.evTitle == evTitle) &&
            (identical(other.evDescription, evDescription) ||
                other.evDescription == evDescription) &&
            (identical(other.evImageLink, evImageLink) ||
                other.evImageLink == evImageLink) &&
            (identical(other.evDatetime, evDatetime) ||
                other.evDatetime == evDatetime) &&
            (identical(other.evCreatedDatetime, evCreatedDatetime) ||
                other.evCreatedDatetime == evCreatedDatetime) &&
            (identical(other.evEditedDatetime, evEditedDatetime) ||
                other.evEditedDatetime == evEditedDatetime) &&
            (identical(other.evThumbImageLink, evThumbImageLink) ||
                other.evThumbImageLink == evThumbImageLink) &&
            (identical(other.evActorsCustom, evActorsCustom) ||
                other.evActorsCustom == evActorsCustom) &&
            (identical(other.evDirectorCustom, evDirectorCustom) ||
                other.evDirectorCustom == evDirectorCustom) &&
            (identical(other.evDirector, evDirector) ||
                other.evDirector == evDirector) &&
            (identical(other.evDirectorId, evDirectorId) ||
                other.evDirectorId == evDirectorId) &&
            (identical(other.evMinAge, evMinAge) ||
                other.evMinAge == evMinAge) &&
            (identical(other.evLanguage, evLanguage) ||
                other.evLanguage == evLanguage) &&
            (identical(other.evDuration, evDuration) ||
                other.evDuration == evDuration) &&
            (identical(other.evGenre, evGenre) || other.evGenre == evGenre) &&
            (identical(other.evIsThirdPartySale, evIsThirdPartySale) ||
                other.evIsThirdPartySale == evIsThirdPartySale) &&
            (identical(other.evThirdPartySaleLink, evThirdPartySaleLink) ||
                other.evThirdPartySaleLink == evThirdPartySaleLink) &&
            const DeepCollectionEquality().equals(other._evActors, _evActors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        evId,
        evAdminId,
        evHallId,
        evTitle,
        evDescription,
        evImageLink,
        evDatetime,
        evCreatedDatetime,
        evEditedDatetime,
        evThumbImageLink,
        evActorsCustom,
        evDirectorCustom,
        evDirector,
        evDirectorId,
        evMinAge,
        evLanguage,
        evDuration,
        evGenre,
        evIsThirdPartySale,
        evThirdPartySaleLink,
        const DeepCollectionEquality().hash(_evActors)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AfishaModelImplCopyWith<_$AfishaModelImpl> get copyWith =>
      __$$AfishaModelImplCopyWithImpl<_$AfishaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AfishaModelImplToJson(
      this,
    );
  }
}

abstract class _AfishaModel implements AfishaModel {
  const factory _AfishaModel(
      {final int? evId,
      final int? evAdminId,
      final int? evHallId,
      final String? evTitle,
      final String? evDescription,
      final String? evImageLink,
      final String? evDatetime,
      final String? evCreatedDatetime,
      final String? evEditedDatetime,
      final String? evThumbImageLink,
      final String? evActorsCustom,
      final String? evDirectorCustom,
      @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
      final Actor? evDirector,
      final int? evDirectorId,
      final int? evMinAge,
      final String? evLanguage,
      final int? evDuration,
      final String? evGenre,
      final bool? evIsThirdPartySale,
      final String? evThirdPartySaleLink,
      @JsonKey(
          name: 'evActors',
          fromJson: AfishaModel._actorsFromJson,
          defaultValue: [])
      final List<Actor>? evActors}) = _$AfishaModelImpl;

  factory _AfishaModel.fromJson(Map<String, dynamic> json) =
      _$AfishaModelImpl.fromJson;

  @override
  int? get evId;
  @override
  int? get evAdminId;
  @override
  int? get evHallId;
  @override
  String? get evTitle;
  @override
  String? get evDescription;
  @override
  String? get evImageLink;
  @override
  String? get evDatetime;
  @override
  String? get evCreatedDatetime;
  @override
  String? get evEditedDatetime;
  @override
  String? get evThumbImageLink;
  @override
  String? get evActorsCustom;
  @override
  String? get evDirectorCustom;
  @override
  @JsonKey(name: 'evDirector', fromJson: AfishaModel._actorFromJson)
  Actor? get evDirector;
  @override
  int? get evDirectorId;
  @override
  int? get evMinAge;
  @override
  String? get evLanguage;
  @override
  int? get evDuration;
  @override
  String? get evGenre;
  @override
  bool? get evIsThirdPartySale;
  @override
  String? get evThirdPartySaleLink;
  @override
  @JsonKey(
      name: 'evActors', fromJson: AfishaModel._actorsFromJson, defaultValue: [])
  List<Actor>? get evActors;
  @override
  @JsonKey(ignore: true)
  _$$AfishaModelImplCopyWith<_$AfishaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventTicket _$EventTicketFromJson(Map<String, dynamic> json) {
  return _EventTicket.fromJson(json);
}

/// @nodoc
mixin _$EventTicket {
  int? get etId => throw _privateConstructorUsedError;
  String? get etEventName => throw _privateConstructorUsedError;
  String? get etEventDate => throw _privateConstructorUsedError;
  String? get etHallName => throw _privateConstructorUsedError;
  String? get etHash => throw _privateConstructorUsedError;
  bool? get etIsPlaceBooked => throw _privateConstructorUsedError;
  bool? get etIsUsed => throw _privateConstructorUsedError;
  int? get etRowNumber => throw _privateConstructorUsedError;
  int? get etPlaceNumber => throw _privateConstructorUsedError;
  int? get etPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventTicketCopyWith<EventTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTicketCopyWith<$Res> {
  factory $EventTicketCopyWith(
          EventTicket value, $Res Function(EventTicket) then) =
      _$EventTicketCopyWithImpl<$Res, EventTicket>;
  @useResult
  $Res call(
      {int? etId,
      String? etEventName,
      String? etEventDate,
      String? etHallName,
      String? etHash,
      bool? etIsPlaceBooked,
      bool? etIsUsed,
      int? etRowNumber,
      int? etPlaceNumber,
      int? etPrice});
}

/// @nodoc
class _$EventTicketCopyWithImpl<$Res, $Val extends EventTicket>
    implements $EventTicketCopyWith<$Res> {
  _$EventTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etId = freezed,
    Object? etEventName = freezed,
    Object? etEventDate = freezed,
    Object? etHallName = freezed,
    Object? etHash = freezed,
    Object? etIsPlaceBooked = freezed,
    Object? etIsUsed = freezed,
    Object? etRowNumber = freezed,
    Object? etPlaceNumber = freezed,
    Object? etPrice = freezed,
  }) {
    return _then(_value.copyWith(
      etId: freezed == etId
          ? _value.etId
          : etId // ignore: cast_nullable_to_non_nullable
              as int?,
      etEventName: freezed == etEventName
          ? _value.etEventName
          : etEventName // ignore: cast_nullable_to_non_nullable
              as String?,
      etEventDate: freezed == etEventDate
          ? _value.etEventDate
          : etEventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      etHallName: freezed == etHallName
          ? _value.etHallName
          : etHallName // ignore: cast_nullable_to_non_nullable
              as String?,
      etHash: freezed == etHash
          ? _value.etHash
          : etHash // ignore: cast_nullable_to_non_nullable
              as String?,
      etIsPlaceBooked: freezed == etIsPlaceBooked
          ? _value.etIsPlaceBooked
          : etIsPlaceBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      etIsUsed: freezed == etIsUsed
          ? _value.etIsUsed
          : etIsUsed // ignore: cast_nullable_to_non_nullable
              as bool?,
      etRowNumber: freezed == etRowNumber
          ? _value.etRowNumber
          : etRowNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      etPlaceNumber: freezed == etPlaceNumber
          ? _value.etPlaceNumber
          : etPlaceNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      etPrice: freezed == etPrice
          ? _value.etPrice
          : etPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventTicketImplCopyWith<$Res>
    implements $EventTicketCopyWith<$Res> {
  factory _$$EventTicketImplCopyWith(
          _$EventTicketImpl value, $Res Function(_$EventTicketImpl) then) =
      __$$EventTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? etId,
      String? etEventName,
      String? etEventDate,
      String? etHallName,
      String? etHash,
      bool? etIsPlaceBooked,
      bool? etIsUsed,
      int? etRowNumber,
      int? etPlaceNumber,
      int? etPrice});
}

/// @nodoc
class __$$EventTicketImplCopyWithImpl<$Res>
    extends _$EventTicketCopyWithImpl<$Res, _$EventTicketImpl>
    implements _$$EventTicketImplCopyWith<$Res> {
  __$$EventTicketImplCopyWithImpl(
      _$EventTicketImpl _value, $Res Function(_$EventTicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etId = freezed,
    Object? etEventName = freezed,
    Object? etEventDate = freezed,
    Object? etHallName = freezed,
    Object? etHash = freezed,
    Object? etIsPlaceBooked = freezed,
    Object? etIsUsed = freezed,
    Object? etRowNumber = freezed,
    Object? etPlaceNumber = freezed,
    Object? etPrice = freezed,
  }) {
    return _then(_$EventTicketImpl(
      etId: freezed == etId
          ? _value.etId
          : etId // ignore: cast_nullable_to_non_nullable
              as int?,
      etEventName: freezed == etEventName
          ? _value.etEventName
          : etEventName // ignore: cast_nullable_to_non_nullable
              as String?,
      etEventDate: freezed == etEventDate
          ? _value.etEventDate
          : etEventDate // ignore: cast_nullable_to_non_nullable
              as String?,
      etHallName: freezed == etHallName
          ? _value.etHallName
          : etHallName // ignore: cast_nullable_to_non_nullable
              as String?,
      etHash: freezed == etHash
          ? _value.etHash
          : etHash // ignore: cast_nullable_to_non_nullable
              as String?,
      etIsPlaceBooked: freezed == etIsPlaceBooked
          ? _value.etIsPlaceBooked
          : etIsPlaceBooked // ignore: cast_nullable_to_non_nullable
              as bool?,
      etIsUsed: freezed == etIsUsed
          ? _value.etIsUsed
          : etIsUsed // ignore: cast_nullable_to_non_nullable
              as bool?,
      etRowNumber: freezed == etRowNumber
          ? _value.etRowNumber
          : etRowNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      etPlaceNumber: freezed == etPlaceNumber
          ? _value.etPlaceNumber
          : etPlaceNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      etPrice: freezed == etPrice
          ? _value.etPrice
          : etPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventTicketImpl implements _EventTicket {
  const _$EventTicketImpl(
      {this.etId,
      this.etEventName,
      this.etEventDate,
      this.etHallName,
      this.etHash,
      this.etIsPlaceBooked,
      this.etIsUsed,
      this.etRowNumber,
      this.etPlaceNumber,
      this.etPrice});

  factory _$EventTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventTicketImplFromJson(json);

  @override
  final int? etId;
  @override
  final String? etEventName;
  @override
  final String? etEventDate;
  @override
  final String? etHallName;
  @override
  final String? etHash;
  @override
  final bool? etIsPlaceBooked;
  @override
  final bool? etIsUsed;
  @override
  final int? etRowNumber;
  @override
  final int? etPlaceNumber;
  @override
  final int? etPrice;

  @override
  String toString() {
    return 'EventTicket(etId: $etId, etEventName: $etEventName, etEventDate: $etEventDate, etHallName: $etHallName, etHash: $etHash, etIsPlaceBooked: $etIsPlaceBooked, etIsUsed: $etIsUsed, etRowNumber: $etRowNumber, etPlaceNumber: $etPlaceNumber, etPrice: $etPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTicketImpl &&
            (identical(other.etId, etId) || other.etId == etId) &&
            (identical(other.etEventName, etEventName) ||
                other.etEventName == etEventName) &&
            (identical(other.etEventDate, etEventDate) ||
                other.etEventDate == etEventDate) &&
            (identical(other.etHallName, etHallName) ||
                other.etHallName == etHallName) &&
            (identical(other.etHash, etHash) || other.etHash == etHash) &&
            (identical(other.etIsPlaceBooked, etIsPlaceBooked) ||
                other.etIsPlaceBooked == etIsPlaceBooked) &&
            (identical(other.etIsUsed, etIsUsed) ||
                other.etIsUsed == etIsUsed) &&
            (identical(other.etRowNumber, etRowNumber) ||
                other.etRowNumber == etRowNumber) &&
            (identical(other.etPlaceNumber, etPlaceNumber) ||
                other.etPlaceNumber == etPlaceNumber) &&
            (identical(other.etPrice, etPrice) || other.etPrice == etPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      etId,
      etEventName,
      etEventDate,
      etHallName,
      etHash,
      etIsPlaceBooked,
      etIsUsed,
      etRowNumber,
      etPlaceNumber,
      etPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventTicketImplCopyWith<_$EventTicketImpl> get copyWith =>
      __$$EventTicketImplCopyWithImpl<_$EventTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventTicketImplToJson(
      this,
    );
  }
}

abstract class _EventTicket implements EventTicket {
  const factory _EventTicket(
      {final int? etId,
      final String? etEventName,
      final String? etEventDate,
      final String? etHallName,
      final String? etHash,
      final bool? etIsPlaceBooked,
      final bool? etIsUsed,
      final int? etRowNumber,
      final int? etPlaceNumber,
      final int? etPrice}) = _$EventTicketImpl;

  factory _EventTicket.fromJson(Map<String, dynamic> json) =
      _$EventTicketImpl.fromJson;

  @override
  int? get etId;
  @override
  String? get etEventName;
  @override
  String? get etEventDate;
  @override
  String? get etHallName;
  @override
  String? get etHash;
  @override
  bool? get etIsPlaceBooked;
  @override
  bool? get etIsUsed;
  @override
  int? get etRowNumber;
  @override
  int? get etPlaceNumber;
  @override
  int? get etPrice;
  @override
  @JsonKey(ignore: true)
  _$$EventTicketImplCopyWith<_$EventTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EwentsModel _$EwentsModelFromJson(Map<String, dynamic> json) {
  return _EwentsModel.fromJson(json);
}

/// @nodoc
mixin _$EwentsModel {
  int? get nwsId => throw _privateConstructorUsedError;
  int? get evAdminId => throw _privateConstructorUsedError;
  int? get evHallId => throw _privateConstructorUsedError;
  int? get evMinAge => throw _privateConstructorUsedError;
  int? get evDuration => throw _privateConstructorUsedError;
  String? get evTitle => throw _privateConstructorUsedError;
  String? get evDescription => throw _privateConstructorUsedError;
  String? get evImageLink => throw _privateConstructorUsedError;
  String? get evDatetime => throw _privateConstructorUsedError;
  String? get evDirectorId => throw _privateConstructorUsedError;
  String? get evLanguage => throw _privateConstructorUsedError;
  String? get evGenre => throw _privateConstructorUsedError;
  String? get evThirdPartySaleLink => throw _privateConstructorUsedError;
  bool? get evIsThirdPartySale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EwentsModelCopyWith<EwentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EwentsModelCopyWith<$Res> {
  factory $EwentsModelCopyWith(
          EwentsModel value, $Res Function(EwentsModel) then) =
      _$EwentsModelCopyWithImpl<$Res, EwentsModel>;
  @useResult
  $Res call(
      {int? nwsId,
      int? evAdminId,
      int? evHallId,
      int? evMinAge,
      int? evDuration,
      String? evTitle,
      String? evDescription,
      String? evImageLink,
      String? evDatetime,
      String? evDirectorId,
      String? evLanguage,
      String? evGenre,
      String? evThirdPartySaleLink,
      bool? evIsThirdPartySale});
}

/// @nodoc
class _$EwentsModelCopyWithImpl<$Res, $Val extends EwentsModel>
    implements $EwentsModelCopyWith<$Res> {
  _$EwentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nwsId = freezed,
    Object? evAdminId = freezed,
    Object? evHallId = freezed,
    Object? evMinAge = freezed,
    Object? evDuration = freezed,
    Object? evTitle = freezed,
    Object? evDescription = freezed,
    Object? evImageLink = freezed,
    Object? evDatetime = freezed,
    Object? evDirectorId = freezed,
    Object? evLanguage = freezed,
    Object? evGenre = freezed,
    Object? evThirdPartySaleLink = freezed,
    Object? evIsThirdPartySale = freezed,
  }) {
    return _then(_value.copyWith(
      nwsId: freezed == nwsId
          ? _value.nwsId
          : nwsId // ignore: cast_nullable_to_non_nullable
              as int?,
      evAdminId: freezed == evAdminId
          ? _value.evAdminId
          : evAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      evHallId: freezed == evHallId
          ? _value.evHallId
          : evHallId // ignore: cast_nullable_to_non_nullable
              as int?,
      evMinAge: freezed == evMinAge
          ? _value.evMinAge
          : evMinAge // ignore: cast_nullable_to_non_nullable
              as int?,
      evDuration: freezed == evDuration
          ? _value.evDuration
          : evDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evTitle: freezed == evTitle
          ? _value.evTitle
          : evTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      evDescription: freezed == evDescription
          ? _value.evDescription
          : evDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      evImageLink: freezed == evImageLink
          ? _value.evImageLink
          : evImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evDatetime: freezed == evDatetime
          ? _value.evDatetime
          : evDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirectorId: freezed == evDirectorId
          ? _value.evDirectorId
          : evDirectorId // ignore: cast_nullable_to_non_nullable
              as String?,
      evLanguage: freezed == evLanguage
          ? _value.evLanguage
          : evLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      evGenre: freezed == evGenre
          ? _value.evGenre
          : evGenre // ignore: cast_nullable_to_non_nullable
              as String?,
      evThirdPartySaleLink: freezed == evThirdPartySaleLink
          ? _value.evThirdPartySaleLink
          : evThirdPartySaleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evIsThirdPartySale: freezed == evIsThirdPartySale
          ? _value.evIsThirdPartySale
          : evIsThirdPartySale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EwentsModelImplCopyWith<$Res>
    implements $EwentsModelCopyWith<$Res> {
  factory _$$EwentsModelImplCopyWith(
          _$EwentsModelImpl value, $Res Function(_$EwentsModelImpl) then) =
      __$$EwentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? nwsId,
      int? evAdminId,
      int? evHallId,
      int? evMinAge,
      int? evDuration,
      String? evTitle,
      String? evDescription,
      String? evImageLink,
      String? evDatetime,
      String? evDirectorId,
      String? evLanguage,
      String? evGenre,
      String? evThirdPartySaleLink,
      bool? evIsThirdPartySale});
}

/// @nodoc
class __$$EwentsModelImplCopyWithImpl<$Res>
    extends _$EwentsModelCopyWithImpl<$Res, _$EwentsModelImpl>
    implements _$$EwentsModelImplCopyWith<$Res> {
  __$$EwentsModelImplCopyWithImpl(
      _$EwentsModelImpl _value, $Res Function(_$EwentsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nwsId = freezed,
    Object? evAdminId = freezed,
    Object? evHallId = freezed,
    Object? evMinAge = freezed,
    Object? evDuration = freezed,
    Object? evTitle = freezed,
    Object? evDescription = freezed,
    Object? evImageLink = freezed,
    Object? evDatetime = freezed,
    Object? evDirectorId = freezed,
    Object? evLanguage = freezed,
    Object? evGenre = freezed,
    Object? evThirdPartySaleLink = freezed,
    Object? evIsThirdPartySale = freezed,
  }) {
    return _then(_$EwentsModelImpl(
      nwsId: freezed == nwsId
          ? _value.nwsId
          : nwsId // ignore: cast_nullable_to_non_nullable
              as int?,
      evAdminId: freezed == evAdminId
          ? _value.evAdminId
          : evAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      evHallId: freezed == evHallId
          ? _value.evHallId
          : evHallId // ignore: cast_nullable_to_non_nullable
              as int?,
      evMinAge: freezed == evMinAge
          ? _value.evMinAge
          : evMinAge // ignore: cast_nullable_to_non_nullable
              as int?,
      evDuration: freezed == evDuration
          ? _value.evDuration
          : evDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evTitle: freezed == evTitle
          ? _value.evTitle
          : evTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      evDescription: freezed == evDescription
          ? _value.evDescription
          : evDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      evImageLink: freezed == evImageLink
          ? _value.evImageLink
          : evImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evDatetime: freezed == evDatetime
          ? _value.evDatetime
          : evDatetime // ignore: cast_nullable_to_non_nullable
              as String?,
      evDirectorId: freezed == evDirectorId
          ? _value.evDirectorId
          : evDirectorId // ignore: cast_nullable_to_non_nullable
              as String?,
      evLanguage: freezed == evLanguage
          ? _value.evLanguage
          : evLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      evGenre: freezed == evGenre
          ? _value.evGenre
          : evGenre // ignore: cast_nullable_to_non_nullable
              as String?,
      evThirdPartySaleLink: freezed == evThirdPartySaleLink
          ? _value.evThirdPartySaleLink
          : evThirdPartySaleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      evIsThirdPartySale: freezed == evIsThirdPartySale
          ? _value.evIsThirdPartySale
          : evIsThirdPartySale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EwentsModelImpl implements _EwentsModel {
  const _$EwentsModelImpl(
      {this.nwsId,
      this.evAdminId,
      this.evHallId,
      this.evMinAge,
      this.evDuration,
      this.evTitle,
      this.evDescription,
      this.evImageLink,
      this.evDatetime,
      this.evDirectorId,
      this.evLanguage,
      this.evGenre,
      this.evThirdPartySaleLink,
      this.evIsThirdPartySale});

  factory _$EwentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EwentsModelImplFromJson(json);

  @override
  final int? nwsId;
  @override
  final int? evAdminId;
  @override
  final int? evHallId;
  @override
  final int? evMinAge;
  @override
  final int? evDuration;
  @override
  final String? evTitle;
  @override
  final String? evDescription;
  @override
  final String? evImageLink;
  @override
  final String? evDatetime;
  @override
  final String? evDirectorId;
  @override
  final String? evLanguage;
  @override
  final String? evGenre;
  @override
  final String? evThirdPartySaleLink;
  @override
  final bool? evIsThirdPartySale;

  @override
  String toString() {
    return 'EwentsModel(nwsId: $nwsId, evAdminId: $evAdminId, evHallId: $evHallId, evMinAge: $evMinAge, evDuration: $evDuration, evTitle: $evTitle, evDescription: $evDescription, evImageLink: $evImageLink, evDatetime: $evDatetime, evDirectorId: $evDirectorId, evLanguage: $evLanguage, evGenre: $evGenre, evThirdPartySaleLink: $evThirdPartySaleLink, evIsThirdPartySale: $evIsThirdPartySale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EwentsModelImpl &&
            (identical(other.nwsId, nwsId) || other.nwsId == nwsId) &&
            (identical(other.evAdminId, evAdminId) ||
                other.evAdminId == evAdminId) &&
            (identical(other.evHallId, evHallId) ||
                other.evHallId == evHallId) &&
            (identical(other.evMinAge, evMinAge) ||
                other.evMinAge == evMinAge) &&
            (identical(other.evDuration, evDuration) ||
                other.evDuration == evDuration) &&
            (identical(other.evTitle, evTitle) || other.evTitle == evTitle) &&
            (identical(other.evDescription, evDescription) ||
                other.evDescription == evDescription) &&
            (identical(other.evImageLink, evImageLink) ||
                other.evImageLink == evImageLink) &&
            (identical(other.evDatetime, evDatetime) ||
                other.evDatetime == evDatetime) &&
            (identical(other.evDirectorId, evDirectorId) ||
                other.evDirectorId == evDirectorId) &&
            (identical(other.evLanguage, evLanguage) ||
                other.evLanguage == evLanguage) &&
            (identical(other.evGenre, evGenre) || other.evGenre == evGenre) &&
            (identical(other.evThirdPartySaleLink, evThirdPartySaleLink) ||
                other.evThirdPartySaleLink == evThirdPartySaleLink) &&
            (identical(other.evIsThirdPartySale, evIsThirdPartySale) ||
                other.evIsThirdPartySale == evIsThirdPartySale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nwsId,
      evAdminId,
      evHallId,
      evMinAge,
      evDuration,
      evTitle,
      evDescription,
      evImageLink,
      evDatetime,
      evDirectorId,
      evLanguage,
      evGenre,
      evThirdPartySaleLink,
      evIsThirdPartySale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EwentsModelImplCopyWith<_$EwentsModelImpl> get copyWith =>
      __$$EwentsModelImplCopyWithImpl<_$EwentsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EwentsModelImplToJson(
      this,
    );
  }
}

abstract class _EwentsModel implements EwentsModel {
  const factory _EwentsModel(
      {final int? nwsId,
      final int? evAdminId,
      final int? evHallId,
      final int? evMinAge,
      final int? evDuration,
      final String? evTitle,
      final String? evDescription,
      final String? evImageLink,
      final String? evDatetime,
      final String? evDirectorId,
      final String? evLanguage,
      final String? evGenre,
      final String? evThirdPartySaleLink,
      final bool? evIsThirdPartySale}) = _$EwentsModelImpl;

  factory _EwentsModel.fromJson(Map<String, dynamic> json) =
      _$EwentsModelImpl.fromJson;

  @override
  int? get nwsId;
  @override
  int? get evAdminId;
  @override
  int? get evHallId;
  @override
  int? get evMinAge;
  @override
  int? get evDuration;
  @override
  String? get evTitle;
  @override
  String? get evDescription;
  @override
  String? get evImageLink;
  @override
  String? get evDatetime;
  @override
  String? get evDirectorId;
  @override
  String? get evLanguage;
  @override
  String? get evGenre;
  @override
  String? get evThirdPartySaleLink;
  @override
  bool? get evIsThirdPartySale;
  @override
  @JsonKey(ignore: true)
  _$$EwentsModelImplCopyWith<_$EwentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call({String? accessToken, String? refreshToken, String? expiresAt});
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String? refreshToken, String? expiresAt});
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$LoginDataImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl({this.accessToken, this.refreshToken, this.expiresAt});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? expiresAt;

  @override
  String toString() {
    return 'LoginData(accessToken: $accessToken, refreshToken: $refreshToken, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
      {final String? accessToken,
      final String? refreshToken,
      final String? expiresAt}) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  int? get nwsId => throw _privateConstructorUsedError;
  int? get nwsAdminId => throw _privateConstructorUsedError;
  String? get nwsTitle => throw _privateConstructorUsedError;
  String? get nwsThumbImageLink => throw _privateConstructorUsedError;
  String? get nwsImageLink => throw _privateConstructorUsedError;
  String? get nwsDescription => throw _privateConstructorUsedError;
  String? get nwsText => throw _privateConstructorUsedError;
  String? get nwsCreatedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {int? nwsId,
      int? nwsAdminId,
      String? nwsTitle,
      String? nwsThumbImageLink,
      String? nwsImageLink,
      String? nwsDescription,
      String? nwsText,
      String? nwsCreatedDate});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nwsId = freezed,
    Object? nwsAdminId = freezed,
    Object? nwsTitle = freezed,
    Object? nwsThumbImageLink = freezed,
    Object? nwsImageLink = freezed,
    Object? nwsDescription = freezed,
    Object? nwsText = freezed,
    Object? nwsCreatedDate = freezed,
  }) {
    return _then(_value.copyWith(
      nwsId: freezed == nwsId
          ? _value.nwsId
          : nwsId // ignore: cast_nullable_to_non_nullable
              as int?,
      nwsAdminId: freezed == nwsAdminId
          ? _value.nwsAdminId
          : nwsAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      nwsTitle: freezed == nwsTitle
          ? _value.nwsTitle
          : nwsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsThumbImageLink: freezed == nwsThumbImageLink
          ? _value.nwsThumbImageLink
          : nwsThumbImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsImageLink: freezed == nwsImageLink
          ? _value.nwsImageLink
          : nwsImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsDescription: freezed == nwsDescription
          ? _value.nwsDescription
          : nwsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsText: freezed == nwsText
          ? _value.nwsText
          : nwsText // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsCreatedDate: freezed == nwsCreatedDate
          ? _value.nwsCreatedDate
          : nwsCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsImplCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$NewsImplCopyWith(
          _$NewsImpl value, $Res Function(_$NewsImpl) then) =
      __$$NewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? nwsId,
      int? nwsAdminId,
      String? nwsTitle,
      String? nwsThumbImageLink,
      String? nwsImageLink,
      String? nwsDescription,
      String? nwsText,
      String? nwsCreatedDate});
}

/// @nodoc
class __$$NewsImplCopyWithImpl<$Res>
    extends _$NewsCopyWithImpl<$Res, _$NewsImpl>
    implements _$$NewsImplCopyWith<$Res> {
  __$$NewsImplCopyWithImpl(_$NewsImpl _value, $Res Function(_$NewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nwsId = freezed,
    Object? nwsAdminId = freezed,
    Object? nwsTitle = freezed,
    Object? nwsThumbImageLink = freezed,
    Object? nwsImageLink = freezed,
    Object? nwsDescription = freezed,
    Object? nwsText = freezed,
    Object? nwsCreatedDate = freezed,
  }) {
    return _then(_$NewsImpl(
      nwsId: freezed == nwsId
          ? _value.nwsId
          : nwsId // ignore: cast_nullable_to_non_nullable
              as int?,
      nwsAdminId: freezed == nwsAdminId
          ? _value.nwsAdminId
          : nwsAdminId // ignore: cast_nullable_to_non_nullable
              as int?,
      nwsTitle: freezed == nwsTitle
          ? _value.nwsTitle
          : nwsTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsThumbImageLink: freezed == nwsThumbImageLink
          ? _value.nwsThumbImageLink
          : nwsThumbImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsImageLink: freezed == nwsImageLink
          ? _value.nwsImageLink
          : nwsImageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsDescription: freezed == nwsDescription
          ? _value.nwsDescription
          : nwsDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsText: freezed == nwsText
          ? _value.nwsText
          : nwsText // ignore: cast_nullable_to_non_nullable
              as String?,
      nwsCreatedDate: freezed == nwsCreatedDate
          ? _value.nwsCreatedDate
          : nwsCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsImpl implements _News {
  const _$NewsImpl(
      {this.nwsId,
      this.nwsAdminId,
      this.nwsTitle,
      this.nwsThumbImageLink,
      this.nwsImageLink,
      this.nwsDescription,
      this.nwsText,
      this.nwsCreatedDate});

  factory _$NewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsImplFromJson(json);

  @override
  final int? nwsId;
  @override
  final int? nwsAdminId;
  @override
  final String? nwsTitle;
  @override
  final String? nwsThumbImageLink;
  @override
  final String? nwsImageLink;
  @override
  final String? nwsDescription;
  @override
  final String? nwsText;
  @override
  final String? nwsCreatedDate;

  @override
  String toString() {
    return 'News(nwsId: $nwsId, nwsAdminId: $nwsAdminId, nwsTitle: $nwsTitle, nwsThumbImageLink: $nwsThumbImageLink, nwsImageLink: $nwsImageLink, nwsDescription: $nwsDescription, nwsText: $nwsText, nwsCreatedDate: $nwsCreatedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsImpl &&
            (identical(other.nwsId, nwsId) || other.nwsId == nwsId) &&
            (identical(other.nwsAdminId, nwsAdminId) ||
                other.nwsAdminId == nwsAdminId) &&
            (identical(other.nwsTitle, nwsTitle) ||
                other.nwsTitle == nwsTitle) &&
            (identical(other.nwsThumbImageLink, nwsThumbImageLink) ||
                other.nwsThumbImageLink == nwsThumbImageLink) &&
            (identical(other.nwsImageLink, nwsImageLink) ||
                other.nwsImageLink == nwsImageLink) &&
            (identical(other.nwsDescription, nwsDescription) ||
                other.nwsDescription == nwsDescription) &&
            (identical(other.nwsText, nwsText) || other.nwsText == nwsText) &&
            (identical(other.nwsCreatedDate, nwsCreatedDate) ||
                other.nwsCreatedDate == nwsCreatedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nwsId, nwsAdminId, nwsTitle,
      nwsThumbImageLink, nwsImageLink, nwsDescription, nwsText, nwsCreatedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      __$$NewsImplCopyWithImpl<_$NewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsImplToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {final int? nwsId,
      final int? nwsAdminId,
      final String? nwsTitle,
      final String? nwsThumbImageLink,
      final String? nwsImageLink,
      final String? nwsDescription,
      final String? nwsText,
      final String? nwsCreatedDate}) = _$NewsImpl;

  factory _News.fromJson(Map<String, dynamic> json) = _$NewsImpl.fromJson;

  @override
  int? get nwsId;
  @override
  int? get nwsAdminId;
  @override
  String? get nwsTitle;
  @override
  String? get nwsThumbImageLink;
  @override
  String? get nwsImageLink;
  @override
  String? get nwsDescription;
  @override
  String? get nwsText;
  @override
  String? get nwsCreatedDate;
  @override
  @JsonKey(ignore: true)
  _$$NewsImplCopyWith<_$NewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderByModel _$OrderByModelFromJson(Map<String, dynamic> json) {
  return _OrderByModel.fromJson(json);
}

/// @nodoc
mixin _$OrderByModel {
  int? get ordId => throw _privateConstructorUsedError;
  int? get ordPrice => throw _privateConstructorUsedError;
  int? get ordUserId => throw _privateConstructorUsedError;
  bool? get ordIsExpired => throw _privateConstructorUsedError;
  String? get ordExpirationDate => throw _privateConstructorUsedError;
  String? get ordPaymentLink => throw _privateConstructorUsedError;
  String? get enterTokenExpirationDate => throw _privateConstructorUsedError;
  String? get enterToken => throw _privateConstructorUsedError;
  String? get ordPayLink => throw _privateConstructorUsedError;
  List<int>? get ticketIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderByModelCopyWith<OrderByModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderByModelCopyWith<$Res> {
  factory $OrderByModelCopyWith(
          OrderByModel value, $Res Function(OrderByModel) then) =
      _$OrderByModelCopyWithImpl<$Res, OrderByModel>;
  @useResult
  $Res call(
      {int? ordId,
      int? ordPrice,
      int? ordUserId,
      bool? ordIsExpired,
      String? ordExpirationDate,
      String? ordPaymentLink,
      String? enterTokenExpirationDate,
      String? enterToken,
      String? ordPayLink,
      List<int>? ticketIds});
}

/// @nodoc
class _$OrderByModelCopyWithImpl<$Res, $Val extends OrderByModel>
    implements $OrderByModelCopyWith<$Res> {
  _$OrderByModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordId = freezed,
    Object? ordPrice = freezed,
    Object? ordUserId = freezed,
    Object? ordIsExpired = freezed,
    Object? ordExpirationDate = freezed,
    Object? ordPaymentLink = freezed,
    Object? enterTokenExpirationDate = freezed,
    Object? enterToken = freezed,
    Object? ordPayLink = freezed,
    Object? ticketIds = freezed,
  }) {
    return _then(_value.copyWith(
      ordId: freezed == ordId
          ? _value.ordId
          : ordId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordPrice: freezed == ordPrice
          ? _value.ordPrice
          : ordPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ordUserId: freezed == ordUserId
          ? _value.ordUserId
          : ordUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordIsExpired: freezed == ordIsExpired
          ? _value.ordIsExpired
          : ordIsExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordExpirationDate: freezed == ordExpirationDate
          ? _value.ordExpirationDate
          : ordExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPaymentLink: freezed == ordPaymentLink
          ? _value.ordPaymentLink
          : ordPaymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      enterTokenExpirationDate: freezed == enterTokenExpirationDate
          ? _value.enterTokenExpirationDate
          : enterTokenExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      enterToken: freezed == enterToken
          ? _value.enterToken
          : enterToken // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPayLink: freezed == ordPayLink
          ? _value.ordPayLink
          : ordPayLink // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketIds: freezed == ticketIds
          ? _value.ticketIds
          : ticketIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderByModelImplCopyWith<$Res>
    implements $OrderByModelCopyWith<$Res> {
  factory _$$OrderByModelImplCopyWith(
          _$OrderByModelImpl value, $Res Function(_$OrderByModelImpl) then) =
      __$$OrderByModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ordId,
      int? ordPrice,
      int? ordUserId,
      bool? ordIsExpired,
      String? ordExpirationDate,
      String? ordPaymentLink,
      String? enterTokenExpirationDate,
      String? enterToken,
      String? ordPayLink,
      List<int>? ticketIds});
}

/// @nodoc
class __$$OrderByModelImplCopyWithImpl<$Res>
    extends _$OrderByModelCopyWithImpl<$Res, _$OrderByModelImpl>
    implements _$$OrderByModelImplCopyWith<$Res> {
  __$$OrderByModelImplCopyWithImpl(
      _$OrderByModelImpl _value, $Res Function(_$OrderByModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordId = freezed,
    Object? ordPrice = freezed,
    Object? ordUserId = freezed,
    Object? ordIsExpired = freezed,
    Object? ordExpirationDate = freezed,
    Object? ordPaymentLink = freezed,
    Object? enterTokenExpirationDate = freezed,
    Object? enterToken = freezed,
    Object? ordPayLink = freezed,
    Object? ticketIds = freezed,
  }) {
    return _then(_$OrderByModelImpl(
      ordId: freezed == ordId
          ? _value.ordId
          : ordId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordPrice: freezed == ordPrice
          ? _value.ordPrice
          : ordPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ordUserId: freezed == ordUserId
          ? _value.ordUserId
          : ordUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordIsExpired: freezed == ordIsExpired
          ? _value.ordIsExpired
          : ordIsExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordExpirationDate: freezed == ordExpirationDate
          ? _value.ordExpirationDate
          : ordExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPaymentLink: freezed == ordPaymentLink
          ? _value.ordPaymentLink
          : ordPaymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      enterTokenExpirationDate: freezed == enterTokenExpirationDate
          ? _value.enterTokenExpirationDate
          : enterTokenExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      enterToken: freezed == enterToken
          ? _value.enterToken
          : enterToken // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPayLink: freezed == ordPayLink
          ? _value.ordPayLink
          : ordPayLink // ignore: cast_nullable_to_non_nullable
              as String?,
      ticketIds: freezed == ticketIds
          ? _value._ticketIds
          : ticketIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderByModelImpl implements _OrderByModel {
  const _$OrderByModelImpl(
      {this.ordId,
      this.ordPrice,
      this.ordUserId,
      this.ordIsExpired,
      this.ordExpirationDate,
      this.ordPaymentLink,
      this.enterTokenExpirationDate,
      this.enterToken,
      this.ordPayLink,
      final List<int>? ticketIds})
      : _ticketIds = ticketIds;

  factory _$OrderByModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderByModelImplFromJson(json);

  @override
  final int? ordId;
  @override
  final int? ordPrice;
  @override
  final int? ordUserId;
  @override
  final bool? ordIsExpired;
  @override
  final String? ordExpirationDate;
  @override
  final String? ordPaymentLink;
  @override
  final String? enterTokenExpirationDate;
  @override
  final String? enterToken;
  @override
  final String? ordPayLink;
  final List<int>? _ticketIds;
  @override
  List<int>? get ticketIds {
    final value = _ticketIds;
    if (value == null) return null;
    if (_ticketIds is EqualUnmodifiableListView) return _ticketIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderByModel(ordId: $ordId, ordPrice: $ordPrice, ordUserId: $ordUserId, ordIsExpired: $ordIsExpired, ordExpirationDate: $ordExpirationDate, ordPaymentLink: $ordPaymentLink, enterTokenExpirationDate: $enterTokenExpirationDate, enterToken: $enterToken, ordPayLink: $ordPayLink, ticketIds: $ticketIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderByModelImpl &&
            (identical(other.ordId, ordId) || other.ordId == ordId) &&
            (identical(other.ordPrice, ordPrice) ||
                other.ordPrice == ordPrice) &&
            (identical(other.ordUserId, ordUserId) ||
                other.ordUserId == ordUserId) &&
            (identical(other.ordIsExpired, ordIsExpired) ||
                other.ordIsExpired == ordIsExpired) &&
            (identical(other.ordExpirationDate, ordExpirationDate) ||
                other.ordExpirationDate == ordExpirationDate) &&
            (identical(other.ordPaymentLink, ordPaymentLink) ||
                other.ordPaymentLink == ordPaymentLink) &&
            (identical(
                    other.enterTokenExpirationDate, enterTokenExpirationDate) ||
                other.enterTokenExpirationDate == enterTokenExpirationDate) &&
            (identical(other.enterToken, enterToken) ||
                other.enterToken == enterToken) &&
            (identical(other.ordPayLink, ordPayLink) ||
                other.ordPayLink == ordPayLink) &&
            const DeepCollectionEquality()
                .equals(other._ticketIds, _ticketIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ordId,
      ordPrice,
      ordUserId,
      ordIsExpired,
      ordExpirationDate,
      ordPaymentLink,
      enterTokenExpirationDate,
      enterToken,
      ordPayLink,
      const DeepCollectionEquality().hash(_ticketIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderByModelImplCopyWith<_$OrderByModelImpl> get copyWith =>
      __$$OrderByModelImplCopyWithImpl<_$OrderByModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderByModelImplToJson(
      this,
    );
  }
}

abstract class _OrderByModel implements OrderByModel {
  const factory _OrderByModel(
      {final int? ordId,
      final int? ordPrice,
      final int? ordUserId,
      final bool? ordIsExpired,
      final String? ordExpirationDate,
      final String? ordPaymentLink,
      final String? enterTokenExpirationDate,
      final String? enterToken,
      final String? ordPayLink,
      final List<int>? ticketIds}) = _$OrderByModelImpl;

  factory _OrderByModel.fromJson(Map<String, dynamic> json) =
      _$OrderByModelImpl.fromJson;

  @override
  int? get ordId;
  @override
  int? get ordPrice;
  @override
  int? get ordUserId;
  @override
  bool? get ordIsExpired;
  @override
  String? get ordExpirationDate;
  @override
  String? get ordPaymentLink;
  @override
  String? get enterTokenExpirationDate;
  @override
  String? get enterToken;
  @override
  String? get ordPayLink;
  @override
  List<int>? get ticketIds;
  @override
  @JsonKey(ignore: true)
  _$$OrderByModelImplCopyWith<_$OrderByModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  int? get ordId => throw _privateConstructorUsedError;
  int? get ordUserId => throw _privateConstructorUsedError;
  int? get ordPrice => throw _privateConstructorUsedError;
  String? get ordCreatedDate => throw _privateConstructorUsedError;
  String? get ordStatus => throw _privateConstructorUsedError;
  bool? get ordIsPayed => throw _privateConstructorUsedError;
  bool? get ordIsExpired => throw _privateConstructorUsedError;
  String? get ordPaymentLink => throw _privateConstructorUsedError;
  String? get ordPayed => throw _privateConstructorUsedError;
  String? get ordExpirationDate =>
      throw _privateConstructorUsedError; // String? ordPayed,
  @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
  AfishaModel? get ordEvent => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'ordEventTickets',
      fromJson: TicketModel._evTicketFromJson,
      defaultValue: [])
  List<EventTicket>? get ordEventTickets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {int? ordId,
      int? ordUserId,
      int? ordPrice,
      String? ordCreatedDate,
      String? ordStatus,
      bool? ordIsPayed,
      bool? ordIsExpired,
      String? ordPaymentLink,
      String? ordPayed,
      String? ordExpirationDate,
      @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
      AfishaModel? ordEvent,
      @JsonKey(
          name: 'ordEventTickets',
          fromJson: TicketModel._evTicketFromJson,
          defaultValue: [])
      List<EventTicket>? ordEventTickets});

  $AfishaModelCopyWith<$Res>? get ordEvent;
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordId = freezed,
    Object? ordUserId = freezed,
    Object? ordPrice = freezed,
    Object? ordCreatedDate = freezed,
    Object? ordStatus = freezed,
    Object? ordIsPayed = freezed,
    Object? ordIsExpired = freezed,
    Object? ordPaymentLink = freezed,
    Object? ordPayed = freezed,
    Object? ordExpirationDate = freezed,
    Object? ordEvent = freezed,
    Object? ordEventTickets = freezed,
  }) {
    return _then(_value.copyWith(
      ordId: freezed == ordId
          ? _value.ordId
          : ordId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordUserId: freezed == ordUserId
          ? _value.ordUserId
          : ordUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordPrice: freezed == ordPrice
          ? _value.ordPrice
          : ordPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ordCreatedDate: freezed == ordCreatedDate
          ? _value.ordCreatedDate
          : ordCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordStatus: freezed == ordStatus
          ? _value.ordStatus
          : ordStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ordIsPayed: freezed == ordIsPayed
          ? _value.ordIsPayed
          : ordIsPayed // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordIsExpired: freezed == ordIsExpired
          ? _value.ordIsExpired
          : ordIsExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordPaymentLink: freezed == ordPaymentLink
          ? _value.ordPaymentLink
          : ordPaymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPayed: freezed == ordPayed
          ? _value.ordPayed
          : ordPayed // ignore: cast_nullable_to_non_nullable
              as String?,
      ordExpirationDate: freezed == ordExpirationDate
          ? _value.ordExpirationDate
          : ordExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordEvent: freezed == ordEvent
          ? _value.ordEvent
          : ordEvent // ignore: cast_nullable_to_non_nullable
              as AfishaModel?,
      ordEventTickets: freezed == ordEventTickets
          ? _value.ordEventTickets
          : ordEventTickets // ignore: cast_nullable_to_non_nullable
              as List<EventTicket>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AfishaModelCopyWith<$Res>? get ordEvent {
    if (_value.ordEvent == null) {
      return null;
    }

    return $AfishaModelCopyWith<$Res>(_value.ordEvent!, (value) {
      return _then(_value.copyWith(ordEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ordId,
      int? ordUserId,
      int? ordPrice,
      String? ordCreatedDate,
      String? ordStatus,
      bool? ordIsPayed,
      bool? ordIsExpired,
      String? ordPaymentLink,
      String? ordPayed,
      String? ordExpirationDate,
      @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
      AfishaModel? ordEvent,
      @JsonKey(
          name: 'ordEventTickets',
          fromJson: TicketModel._evTicketFromJson,
          defaultValue: [])
      List<EventTicket>? ordEventTickets});

  @override
  $AfishaModelCopyWith<$Res>? get ordEvent;
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordId = freezed,
    Object? ordUserId = freezed,
    Object? ordPrice = freezed,
    Object? ordCreatedDate = freezed,
    Object? ordStatus = freezed,
    Object? ordIsPayed = freezed,
    Object? ordIsExpired = freezed,
    Object? ordPaymentLink = freezed,
    Object? ordPayed = freezed,
    Object? ordExpirationDate = freezed,
    Object? ordEvent = freezed,
    Object? ordEventTickets = freezed,
  }) {
    return _then(_$TicketModelImpl(
      ordId: freezed == ordId
          ? _value.ordId
          : ordId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordUserId: freezed == ordUserId
          ? _value.ordUserId
          : ordUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      ordPrice: freezed == ordPrice
          ? _value.ordPrice
          : ordPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      ordCreatedDate: freezed == ordCreatedDate
          ? _value.ordCreatedDate
          : ordCreatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordStatus: freezed == ordStatus
          ? _value.ordStatus
          : ordStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      ordIsPayed: freezed == ordIsPayed
          ? _value.ordIsPayed
          : ordIsPayed // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordIsExpired: freezed == ordIsExpired
          ? _value.ordIsExpired
          : ordIsExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      ordPaymentLink: freezed == ordPaymentLink
          ? _value.ordPaymentLink
          : ordPaymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
      ordPayed: freezed == ordPayed
          ? _value.ordPayed
          : ordPayed // ignore: cast_nullable_to_non_nullable
              as String?,
      ordExpirationDate: freezed == ordExpirationDate
          ? _value.ordExpirationDate
          : ordExpirationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      ordEvent: freezed == ordEvent
          ? _value.ordEvent
          : ordEvent // ignore: cast_nullable_to_non_nullable
              as AfishaModel?,
      ordEventTickets: freezed == ordEventTickets
          ? _value._ordEventTickets
          : ordEventTickets // ignore: cast_nullable_to_non_nullable
              as List<EventTicket>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  const _$TicketModelImpl(
      {this.ordId,
      this.ordUserId,
      this.ordPrice,
      this.ordCreatedDate,
      this.ordStatus,
      this.ordIsPayed,
      this.ordIsExpired,
      this.ordPaymentLink,
      this.ordPayed,
      this.ordExpirationDate,
      @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
      this.ordEvent,
      @JsonKey(
          name: 'ordEventTickets',
          fromJson: TicketModel._evTicketFromJson,
          defaultValue: [])
      final List<EventTicket>? ordEventTickets})
      : _ordEventTickets = ordEventTickets;

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

  @override
  final int? ordId;
  @override
  final int? ordUserId;
  @override
  final int? ordPrice;
  @override
  final String? ordCreatedDate;
  @override
  final String? ordStatus;
  @override
  final bool? ordIsPayed;
  @override
  final bool? ordIsExpired;
  @override
  final String? ordPaymentLink;
  @override
  final String? ordPayed;
  @override
  final String? ordExpirationDate;
// String? ordPayed,
  @override
  @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
  final AfishaModel? ordEvent;
  final List<EventTicket>? _ordEventTickets;
  @override
  @JsonKey(
      name: 'ordEventTickets',
      fromJson: TicketModel._evTicketFromJson,
      defaultValue: [])
  List<EventTicket>? get ordEventTickets {
    final value = _ordEventTickets;
    if (value == null) return null;
    if (_ordEventTickets is EqualUnmodifiableListView) return _ordEventTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketModel(ordId: $ordId, ordUserId: $ordUserId, ordPrice: $ordPrice, ordCreatedDate: $ordCreatedDate, ordStatus: $ordStatus, ordIsPayed: $ordIsPayed, ordIsExpired: $ordIsExpired, ordPaymentLink: $ordPaymentLink, ordPayed: $ordPayed, ordExpirationDate: $ordExpirationDate, ordEvent: $ordEvent, ordEventTickets: $ordEventTickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.ordId, ordId) || other.ordId == ordId) &&
            (identical(other.ordUserId, ordUserId) ||
                other.ordUserId == ordUserId) &&
            (identical(other.ordPrice, ordPrice) ||
                other.ordPrice == ordPrice) &&
            (identical(other.ordCreatedDate, ordCreatedDate) ||
                other.ordCreatedDate == ordCreatedDate) &&
            (identical(other.ordStatus, ordStatus) ||
                other.ordStatus == ordStatus) &&
            (identical(other.ordIsPayed, ordIsPayed) ||
                other.ordIsPayed == ordIsPayed) &&
            (identical(other.ordIsExpired, ordIsExpired) ||
                other.ordIsExpired == ordIsExpired) &&
            (identical(other.ordPaymentLink, ordPaymentLink) ||
                other.ordPaymentLink == ordPaymentLink) &&
            (identical(other.ordPayed, ordPayed) ||
                other.ordPayed == ordPayed) &&
            (identical(other.ordExpirationDate, ordExpirationDate) ||
                other.ordExpirationDate == ordExpirationDate) &&
            (identical(other.ordEvent, ordEvent) ||
                other.ordEvent == ordEvent) &&
            const DeepCollectionEquality()
                .equals(other._ordEventTickets, _ordEventTickets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ordId,
      ordUserId,
      ordPrice,
      ordCreatedDate,
      ordStatus,
      ordIsPayed,
      ordIsExpired,
      ordPaymentLink,
      ordPayed,
      ordExpirationDate,
      ordEvent,
      const DeepCollectionEquality().hash(_ordEventTickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
      {final int? ordId,
      final int? ordUserId,
      final int? ordPrice,
      final String? ordCreatedDate,
      final String? ordStatus,
      final bool? ordIsPayed,
      final bool? ordIsExpired,
      final String? ordPaymentLink,
      final String? ordPayed,
      final String? ordExpirationDate,
      @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
      final AfishaModel? ordEvent,
      @JsonKey(
          name: 'ordEventTickets',
          fromJson: TicketModel._evTicketFromJson,
          defaultValue: [])
      final List<EventTicket>? ordEventTickets}) = _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

  @override
  int? get ordId;
  @override
  int? get ordUserId;
  @override
  int? get ordPrice;
  @override
  String? get ordCreatedDate;
  @override
  String? get ordStatus;
  @override
  bool? get ordIsPayed;
  @override
  bool? get ordIsExpired;
  @override
  String? get ordPaymentLink;
  @override
  String? get ordPayed;
  @override
  String? get ordExpirationDate;
  @override // String? ordPayed,
  @JsonKey(name: 'ordEvent', fromJson: TicketModel._ordEventFromJson)
  AfishaModel? get ordEvent;
  @override
  @JsonKey(
      name: 'ordEventTickets',
      fromJson: TicketModel._evTicketFromJson,
      defaultValue: [])
  List<EventTicket>? get ordEventTickets;
  @override
  @JsonKey(ignore: true)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get usrId => throw _privateConstructorUsedError;
  String? get usrEmail => throw _privateConstructorUsedError;
  String? get usrPhone => throw _privateConstructorUsedError;
  String? get usrName => throw _privateConstructorUsedError;
  String? get userFotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? usrId,
      String? usrEmail,
      String? usrPhone,
      String? usrName,
      String? userFotoUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usrId = freezed,
    Object? usrEmail = freezed,
    Object? usrPhone = freezed,
    Object? usrName = freezed,
    Object? userFotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      usrId: freezed == usrId
          ? _value.usrId
          : usrId // ignore: cast_nullable_to_non_nullable
              as int?,
      usrEmail: freezed == usrEmail
          ? _value.usrEmail
          : usrEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      usrPhone: freezed == usrPhone
          ? _value.usrPhone
          : usrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      usrName: freezed == usrName
          ? _value.usrName
          : usrName // ignore: cast_nullable_to_non_nullable
              as String?,
      userFotoUrl: freezed == userFotoUrl
          ? _value.userFotoUrl
          : userFotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? usrId,
      String? usrEmail,
      String? usrPhone,
      String? usrName,
      String? userFotoUrl});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usrId = freezed,
    Object? usrEmail = freezed,
    Object? usrPhone = freezed,
    Object? usrName = freezed,
    Object? userFotoUrl = freezed,
  }) {
    return _then(_$UserImpl(
      usrId: freezed == usrId
          ? _value.usrId
          : usrId // ignore: cast_nullable_to_non_nullable
              as int?,
      usrEmail: freezed == usrEmail
          ? _value.usrEmail
          : usrEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      usrPhone: freezed == usrPhone
          ? _value.usrPhone
          : usrPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      usrName: freezed == usrName
          ? _value.usrName
          : usrName // ignore: cast_nullable_to_non_nullable
              as String?,
      userFotoUrl: freezed == userFotoUrl
          ? _value.userFotoUrl
          : userFotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {this.usrId,
      this.usrEmail,
      this.usrPhone,
      this.usrName,
      this.userFotoUrl});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? usrId;
  @override
  final String? usrEmail;
  @override
  final String? usrPhone;
  @override
  final String? usrName;
  @override
  final String? userFotoUrl;

  @override
  String toString() {
    return 'User(usrId: $usrId, usrEmail: $usrEmail, usrPhone: $usrPhone, usrName: $usrName, userFotoUrl: $userFotoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.usrId, usrId) || other.usrId == usrId) &&
            (identical(other.usrEmail, usrEmail) ||
                other.usrEmail == usrEmail) &&
            (identical(other.usrPhone, usrPhone) ||
                other.usrPhone == usrPhone) &&
            (identical(other.usrName, usrName) || other.usrName == usrName) &&
            (identical(other.userFotoUrl, userFotoUrl) ||
                other.userFotoUrl == userFotoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, usrId, usrEmail, usrPhone, usrName, userFotoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? usrId,
      final String? usrEmail,
      final String? usrPhone,
      final String? usrName,
      final String? userFotoUrl}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get usrId;
  @override
  String? get usrEmail;
  @override
  String? get usrPhone;
  @override
  String? get usrName;
  @override
  String? get userFotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
