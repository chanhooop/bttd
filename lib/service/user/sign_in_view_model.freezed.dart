// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInViewModel {
  UserModel? get userModel => throw _privateConstructorUsedError;
  bool? get isLogined => throw _privateConstructorUsedError;
  TextEditingController? get emailTxtCtr => throw _privateConstructorUsedError;
  TextEditingController? get pwTxtCtr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInViewModelCopyWith<SignInViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInViewModelCopyWith<$Res> {
  factory $SignInViewModelCopyWith(
          SignInViewModel value, $Res Function(SignInViewModel) then) =
      _$SignInViewModelCopyWithImpl<$Res, SignInViewModel>;
  @useResult
  $Res call(
      {UserModel? userModel,
      bool? isLogined,
      TextEditingController? emailTxtCtr,
      TextEditingController? pwTxtCtr});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$SignInViewModelCopyWithImpl<$Res, $Val extends SignInViewModel>
    implements $SignInViewModelCopyWith<$Res> {
  _$SignInViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
    Object? isLogined = freezed,
    Object? emailTxtCtr = freezed,
    Object? pwTxtCtr = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLogined: freezed == isLogined
          ? _value.isLogined
          : isLogined // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailTxtCtr: freezed == emailTxtCtr
          ? _value.emailTxtCtr
          : emailTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwTxtCtr: freezed == pwTxtCtr
          ? _value.pwTxtCtr
          : pwTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInViewModelImplCopyWith<$Res>
    implements $SignInViewModelCopyWith<$Res> {
  factory _$$SignInViewModelImplCopyWith(_$SignInViewModelImpl value,
          $Res Function(_$SignInViewModelImpl) then) =
      __$$SignInViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? userModel,
      bool? isLogined,
      TextEditingController? emailTxtCtr,
      TextEditingController? pwTxtCtr});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$SignInViewModelImplCopyWithImpl<$Res>
    extends _$SignInViewModelCopyWithImpl<$Res, _$SignInViewModelImpl>
    implements _$$SignInViewModelImplCopyWith<$Res> {
  __$$SignInViewModelImplCopyWithImpl(
      _$SignInViewModelImpl _value, $Res Function(_$SignInViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = freezed,
    Object? isLogined = freezed,
    Object? emailTxtCtr = freezed,
    Object? pwTxtCtr = freezed,
  }) {
    return _then(_$SignInViewModelImpl(
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isLogined: freezed == isLogined
          ? _value.isLogined
          : isLogined // ignore: cast_nullable_to_non_nullable
              as bool?,
      emailTxtCtr: freezed == emailTxtCtr
          ? _value.emailTxtCtr
          : emailTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwTxtCtr: freezed == pwTxtCtr
          ? _value.pwTxtCtr
          : pwTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$SignInViewModelImpl implements _SignInViewModel {
  _$SignInViewModelImpl(
      {this.userModel, this.isLogined, this.emailTxtCtr, this.pwTxtCtr});

  @override
  final UserModel? userModel;
  @override
  final bool? isLogined;
  @override
  final TextEditingController? emailTxtCtr;
  @override
  final TextEditingController? pwTxtCtr;

  @override
  String toString() {
    return 'SignInViewModel(userModel: $userModel, isLogined: $isLogined, emailTxtCtr: $emailTxtCtr, pwTxtCtr: $pwTxtCtr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInViewModelImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isLogined, isLogined) ||
                other.isLogined == isLogined) &&
            (identical(other.emailTxtCtr, emailTxtCtr) ||
                other.emailTxtCtr == emailTxtCtr) &&
            (identical(other.pwTxtCtr, pwTxtCtr) ||
                other.pwTxtCtr == pwTxtCtr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userModel, isLogined, emailTxtCtr, pwTxtCtr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInViewModelImplCopyWith<_$SignInViewModelImpl> get copyWith =>
      __$$SignInViewModelImplCopyWithImpl<_$SignInViewModelImpl>(
          this, _$identity);
}

abstract class _SignInViewModel implements SignInViewModel {
  factory _SignInViewModel(
      {final UserModel? userModel,
      final bool? isLogined,
      final TextEditingController? emailTxtCtr,
      final TextEditingController? pwTxtCtr}) = _$SignInViewModelImpl;

  @override
  UserModel? get userModel;
  @override
  bool? get isLogined;
  @override
  TextEditingController? get emailTxtCtr;
  @override
  TextEditingController? get pwTxtCtr;
  @override
  @JsonKey(ignore: true)
  _$$SignInViewModelImplCopyWith<_$SignInViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
