// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpViewModel {
  SignUpModel? get signUpModel => throw _privateConstructorUsedError;
  TextEditingController? get emailTxtCtr => throw _privateConstructorUsedError;
  TextEditingController? get pwTxtCtr => throw _privateConstructorUsedError;
  TextEditingController? get pwCheckTxtCtr =>
      throw _privateConstructorUsedError;
  TextEditingController? get nickNameTxtCtr =>
      throw _privateConstructorUsedError;
  TextEditingController? get ageTxtCtr => throw _privateConstructorUsedError;
  TextEditingController? get weightTxtCtr => throw _privateConstructorUsedError;
  bool? get isPwChecked => throw _privateConstructorUsedError;
  bool? get isCheckedEmail => throw _privateConstructorUsedError;
  bool? get isAuthenticateEmail => throw _privateConstructorUsedError;
  bool? get isAuthenticateEmailChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpViewModelCopyWith<SignUpViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpViewModelCopyWith<$Res> {
  factory $SignUpViewModelCopyWith(
          SignUpViewModel value, $Res Function(SignUpViewModel) then) =
      _$SignUpViewModelCopyWithImpl<$Res, SignUpViewModel>;
  @useResult
  $Res call(
      {SignUpModel? signUpModel,
      TextEditingController? emailTxtCtr,
      TextEditingController? pwTxtCtr,
      TextEditingController? pwCheckTxtCtr,
      TextEditingController? nickNameTxtCtr,
      TextEditingController? ageTxtCtr,
      TextEditingController? weightTxtCtr,
      bool? isPwChecked,
      bool? isCheckedEmail,
      bool? isAuthenticateEmail,
      bool? isAuthenticateEmailChecked});

  $SignUpModelCopyWith<$Res>? get signUpModel;
}

/// @nodoc
class _$SignUpViewModelCopyWithImpl<$Res, $Val extends SignUpViewModel>
    implements $SignUpViewModelCopyWith<$Res> {
  _$SignUpViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = freezed,
    Object? emailTxtCtr = freezed,
    Object? pwTxtCtr = freezed,
    Object? pwCheckTxtCtr = freezed,
    Object? nickNameTxtCtr = freezed,
    Object? ageTxtCtr = freezed,
    Object? weightTxtCtr = freezed,
    Object? isPwChecked = freezed,
    Object? isCheckedEmail = freezed,
    Object? isAuthenticateEmail = freezed,
    Object? isAuthenticateEmailChecked = freezed,
  }) {
    return _then(_value.copyWith(
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      emailTxtCtr: freezed == emailTxtCtr
          ? _value.emailTxtCtr
          : emailTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwTxtCtr: freezed == pwTxtCtr
          ? _value.pwTxtCtr
          : pwTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwCheckTxtCtr: freezed == pwCheckTxtCtr
          ? _value.pwCheckTxtCtr
          : pwCheckTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      nickNameTxtCtr: freezed == nickNameTxtCtr
          ? _value.nickNameTxtCtr
          : nickNameTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      ageTxtCtr: freezed == ageTxtCtr
          ? _value.ageTxtCtr
          : ageTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      weightTxtCtr: freezed == weightTxtCtr
          ? _value.weightTxtCtr
          : weightTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      isPwChecked: freezed == isPwChecked
          ? _value.isPwChecked
          : isPwChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckedEmail: freezed == isCheckedEmail
          ? _value.isCheckedEmail
          : isCheckedEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthenticateEmail: freezed == isAuthenticateEmail
          ? _value.isAuthenticateEmail
          : isAuthenticateEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthenticateEmailChecked: freezed == isAuthenticateEmailChecked
          ? _value.isAuthenticateEmailChecked
          : isAuthenticateEmailChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpModelCopyWith<$Res>? get signUpModel {
    if (_value.signUpModel == null) {
      return null;
    }

    return $SignUpModelCopyWith<$Res>(_value.signUpModel!, (value) {
      return _then(_value.copyWith(signUpModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpViewModelImplCopyWith<$Res>
    implements $SignUpViewModelCopyWith<$Res> {
  factory _$$SignUpViewModelImplCopyWith(_$SignUpViewModelImpl value,
          $Res Function(_$SignUpViewModelImpl) then) =
      __$$SignUpViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignUpModel? signUpModel,
      TextEditingController? emailTxtCtr,
      TextEditingController? pwTxtCtr,
      TextEditingController? pwCheckTxtCtr,
      TextEditingController? nickNameTxtCtr,
      TextEditingController? ageTxtCtr,
      TextEditingController? weightTxtCtr,
      bool? isPwChecked,
      bool? isCheckedEmail,
      bool? isAuthenticateEmail,
      bool? isAuthenticateEmailChecked});

  @override
  $SignUpModelCopyWith<$Res>? get signUpModel;
}

/// @nodoc
class __$$SignUpViewModelImplCopyWithImpl<$Res>
    extends _$SignUpViewModelCopyWithImpl<$Res, _$SignUpViewModelImpl>
    implements _$$SignUpViewModelImplCopyWith<$Res> {
  __$$SignUpViewModelImplCopyWithImpl(
      _$SignUpViewModelImpl _value, $Res Function(_$SignUpViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = freezed,
    Object? emailTxtCtr = freezed,
    Object? pwTxtCtr = freezed,
    Object? pwCheckTxtCtr = freezed,
    Object? nickNameTxtCtr = freezed,
    Object? ageTxtCtr = freezed,
    Object? weightTxtCtr = freezed,
    Object? isPwChecked = freezed,
    Object? isCheckedEmail = freezed,
    Object? isAuthenticateEmail = freezed,
    Object? isAuthenticateEmailChecked = freezed,
  }) {
    return _then(_$SignUpViewModelImpl(
      signUpModel: freezed == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel?,
      emailTxtCtr: freezed == emailTxtCtr
          ? _value.emailTxtCtr
          : emailTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwTxtCtr: freezed == pwTxtCtr
          ? _value.pwTxtCtr
          : pwTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      pwCheckTxtCtr: freezed == pwCheckTxtCtr
          ? _value.pwCheckTxtCtr
          : pwCheckTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      nickNameTxtCtr: freezed == nickNameTxtCtr
          ? _value.nickNameTxtCtr
          : nickNameTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      ageTxtCtr: freezed == ageTxtCtr
          ? _value.ageTxtCtr
          : ageTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      weightTxtCtr: freezed == weightTxtCtr
          ? _value.weightTxtCtr
          : weightTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      isPwChecked: freezed == isPwChecked
          ? _value.isPwChecked
          : isPwChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCheckedEmail: freezed == isCheckedEmail
          ? _value.isCheckedEmail
          : isCheckedEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthenticateEmail: freezed == isAuthenticateEmail
          ? _value.isAuthenticateEmail
          : isAuthenticateEmail // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAuthenticateEmailChecked: freezed == isAuthenticateEmailChecked
          ? _value.isAuthenticateEmailChecked
          : isAuthenticateEmailChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SignUpViewModelImpl implements _SignUpViewModel {
  _$SignUpViewModelImpl(
      {this.signUpModel,
      this.emailTxtCtr,
      this.pwTxtCtr,
      this.pwCheckTxtCtr,
      this.nickNameTxtCtr,
      this.ageTxtCtr,
      this.weightTxtCtr,
      this.isPwChecked,
      this.isCheckedEmail,
      this.isAuthenticateEmail,
      this.isAuthenticateEmailChecked});

  @override
  final SignUpModel? signUpModel;
  @override
  final TextEditingController? emailTxtCtr;
  @override
  final TextEditingController? pwTxtCtr;
  @override
  final TextEditingController? pwCheckTxtCtr;
  @override
  final TextEditingController? nickNameTxtCtr;
  @override
  final TextEditingController? ageTxtCtr;
  @override
  final TextEditingController? weightTxtCtr;
  @override
  final bool? isPwChecked;
  @override
  final bool? isCheckedEmail;
  @override
  final bool? isAuthenticateEmail;
  @override
  final bool? isAuthenticateEmailChecked;

  @override
  String toString() {
    return 'SignUpViewModel(signUpModel: $signUpModel, emailTxtCtr: $emailTxtCtr, pwTxtCtr: $pwTxtCtr, pwCheckTxtCtr: $pwCheckTxtCtr, nickNameTxtCtr: $nickNameTxtCtr, ageTxtCtr: $ageTxtCtr, weightTxtCtr: $weightTxtCtr, isPwChecked: $isPwChecked, isCheckedEmail: $isCheckedEmail, isAuthenticateEmail: $isAuthenticateEmail, isAuthenticateEmailChecked: $isAuthenticateEmailChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpViewModelImpl &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel) &&
            (identical(other.emailTxtCtr, emailTxtCtr) ||
                other.emailTxtCtr == emailTxtCtr) &&
            (identical(other.pwTxtCtr, pwTxtCtr) ||
                other.pwTxtCtr == pwTxtCtr) &&
            (identical(other.pwCheckTxtCtr, pwCheckTxtCtr) ||
                other.pwCheckTxtCtr == pwCheckTxtCtr) &&
            (identical(other.nickNameTxtCtr, nickNameTxtCtr) ||
                other.nickNameTxtCtr == nickNameTxtCtr) &&
            (identical(other.ageTxtCtr, ageTxtCtr) ||
                other.ageTxtCtr == ageTxtCtr) &&
            (identical(other.weightTxtCtr, weightTxtCtr) ||
                other.weightTxtCtr == weightTxtCtr) &&
            (identical(other.isPwChecked, isPwChecked) ||
                other.isPwChecked == isPwChecked) &&
            (identical(other.isCheckedEmail, isCheckedEmail) ||
                other.isCheckedEmail == isCheckedEmail) &&
            (identical(other.isAuthenticateEmail, isAuthenticateEmail) ||
                other.isAuthenticateEmail == isAuthenticateEmail) &&
            (identical(other.isAuthenticateEmailChecked,
                    isAuthenticateEmailChecked) ||
                other.isAuthenticateEmailChecked ==
                    isAuthenticateEmailChecked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signUpModel,
      emailTxtCtr,
      pwTxtCtr,
      pwCheckTxtCtr,
      nickNameTxtCtr,
      ageTxtCtr,
      weightTxtCtr,
      isPwChecked,
      isCheckedEmail,
      isAuthenticateEmail,
      isAuthenticateEmailChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpViewModelImplCopyWith<_$SignUpViewModelImpl> get copyWith =>
      __$$SignUpViewModelImplCopyWithImpl<_$SignUpViewModelImpl>(
          this, _$identity);
}

abstract class _SignUpViewModel implements SignUpViewModel {
  factory _SignUpViewModel(
      {final SignUpModel? signUpModel,
      final TextEditingController? emailTxtCtr,
      final TextEditingController? pwTxtCtr,
      final TextEditingController? pwCheckTxtCtr,
      final TextEditingController? nickNameTxtCtr,
      final TextEditingController? ageTxtCtr,
      final TextEditingController? weightTxtCtr,
      final bool? isPwChecked,
      final bool? isCheckedEmail,
      final bool? isAuthenticateEmail,
      final bool? isAuthenticateEmailChecked}) = _$SignUpViewModelImpl;

  @override
  SignUpModel? get signUpModel;
  @override
  TextEditingController? get emailTxtCtr;
  @override
  TextEditingController? get pwTxtCtr;
  @override
  TextEditingController? get pwCheckTxtCtr;
  @override
  TextEditingController? get nickNameTxtCtr;
  @override
  TextEditingController? get ageTxtCtr;
  @override
  TextEditingController? get weightTxtCtr;
  @override
  bool? get isPwChecked;
  @override
  bool? get isCheckedEmail;
  @override
  bool? get isAuthenticateEmail;
  @override
  bool? get isAuthenticateEmailChecked;
  @override
  @JsonKey(ignore: true)
  _$$SignUpViewModelImplCopyWith<_$SignUpViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
