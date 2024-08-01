// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'afisha_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AfishaState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AfishaModel> get afishaList => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get loadLastPages => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<AfishaModel> afishaList,
            User? user, bool loadLastPages, int page, int itemCount)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<AfishaModel> afishaList, User? user,
            bool loadLastPages, int page, int itemCount)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<AfishaModel> afishaList, User? user,
            bool loadLastPages, int page, int itemCount)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AfishaStateCopyWith<AfishaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AfishaStateCopyWith<$Res> {
  factory $AfishaStateCopyWith(
          AfishaState value, $Res Function(AfishaState) then) =
      _$AfishaStateCopyWithImpl<$Res, AfishaState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<AfishaModel> afishaList,
      User? user,
      bool loadLastPages,
      int page,
      int itemCount});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AfishaStateCopyWithImpl<$Res, $Val extends AfishaState>
    implements $AfishaStateCopyWith<$Res> {
  _$AfishaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? afishaList = null,
    Object? user = freezed,
    Object? loadLastPages = null,
    Object? page = null,
    Object? itemCount = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      afishaList: null == afishaList
          ? _value.afishaList
          : afishaList // ignore: cast_nullable_to_non_nullable
              as List<AfishaModel>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loadLastPages: null == loadLastPages
          ? _value.loadLastPages
          : loadLastPages // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AfishaStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<AfishaModel> afishaList,
      User? user,
      bool loadLastPages,
      int page,
      int itemCount});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AfishaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? afishaList = null,
    Object? user = freezed,
    Object? loadLastPages = null,
    Object? page = null,
    Object? itemCount = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      afishaList: null == afishaList
          ? _value._afishaList
          : afishaList // ignore: cast_nullable_to_non_nullable
              as List<AfishaModel>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loadLastPages: null == loadLastPages
          ? _value.loadLastPages
          : loadLastPages // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemCount: null == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      final List<AfishaModel> afishaList = const [],
      this.user,
      this.loadLastPages = false,
      this.page = 1,
      this.itemCount = 20})
      : _afishaList = afishaList;

  @override
  final bool isLoading;
  final List<AfishaModel> _afishaList;
  @override
  @JsonKey()
  List<AfishaModel> get afishaList {
    if (_afishaList is EqualUnmodifiableListView) return _afishaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_afishaList);
  }

  @override
  final User? user;
  @override
  @JsonKey()
  final bool loadLastPages;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int itemCount;

  @override
  String toString() {
    return 'AfishaState.initial(isLoading: $isLoading, afishaList: $afishaList, user: $user, loadLastPages: $loadLastPages, page: $page, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._afishaList, _afishaList) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loadLastPages, loadLastPages) ||
                other.loadLastPages == loadLastPages) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_afishaList),
      user,
      loadLastPages,
      page,
      itemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<AfishaModel> afishaList,
            User? user, bool loadLastPages, int page, int itemCount)
        initial,
  }) {
    return initial(isLoading, afishaList, user, loadLastPages, page, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<AfishaModel> afishaList, User? user,
            bool loadLastPages, int page, int itemCount)?
        initial,
  }) {
    return initial?.call(
        isLoading, afishaList, user, loadLastPages, page, itemCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<AfishaModel> afishaList, User? user,
            bool loadLastPages, int page, int itemCount)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isLoading, afishaList, user, loadLastPages, page, itemCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AfishaState {
  const factory _Initial(
      {required final bool isLoading,
      final List<AfishaModel> afishaList,
      final User? user,
      final bool loadLastPages,
      final int page,
      final int itemCount}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  List<AfishaModel> get afishaList;
  @override
  User? get user;
  @override
  bool get loadLastPages;
  @override
  int get page;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
