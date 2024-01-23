// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String? get user_id => throw _privateConstructorUsedError;
  String? get user_name => throw _privateConstructorUsedError;
  String? get user_weight => throw _privateConstructorUsedError;
  int? get user_win => throw _privateConstructorUsedError;
  int? get user_lose => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String? user_id,
      String? user_name,
      String? user_weight,
      int? user_win,
      int? user_lose,
      String? photo});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? user_name = freezed,
    Object? user_weight = freezed,
    Object? user_win = freezed,
    Object? user_lose = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      user_weight: freezed == user_weight
          ? _value.user_weight
          : user_weight // ignore: cast_nullable_to_non_nullable
              as String?,
      user_win: freezed == user_win
          ? _value.user_win
          : user_win // ignore: cast_nullable_to_non_nullable
              as int?,
      user_lose: freezed == user_lose
          ? _value.user_lose
          : user_lose // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user_id,
      String? user_name,
      String? user_weight,
      int? user_win,
      int? user_lose,
      String? photo});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? user_name = freezed,
    Object? user_weight = freezed,
    Object? user_win = freezed,
    Object? user_lose = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$UserModelImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      user_weight: freezed == user_weight
          ? _value.user_weight
          : user_weight // ignore: cast_nullable_to_non_nullable
              as String?,
      user_win: freezed == user_win
          ? _value.user_win
          : user_win // ignore: cast_nullable_to_non_nullable
              as int?,
      user_lose: freezed == user_lose
          ? _value.user_lose
          : user_lose // ignore: cast_nullable_to_non_nullable
              as int?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {this.user_id,
      this.user_name,
      this.user_weight,
      this.user_win,
      this.user_lose,
      this.photo});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String? user_id;
  @override
  final String? user_name;
  @override
  final String? user_weight;
  @override
  final int? user_win;
  @override
  final int? user_lose;
  @override
  final String? photo;

  @override
  String toString() {
    return 'UserModel(user_id: $user_id, user_name: $user_name, user_weight: $user_weight, user_win: $user_win, user_lose: $user_lose, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.user_weight, user_weight) ||
                other.user_weight == user_weight) &&
            (identical(other.user_win, user_win) ||
                other.user_win == user_win) &&
            (identical(other.user_lose, user_lose) ||
                other.user_lose == user_lose) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, user_id, user_name, user_weight, user_win, user_lose, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final String? user_id,
      final String? user_name,
      final String? user_weight,
      final int? user_win,
      final int? user_lose,
      final String? photo}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String? get user_id;
  @override
  String? get user_name;
  @override
  String? get user_weight;
  @override
  int? get user_win;
  @override
  int? get user_lose;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
