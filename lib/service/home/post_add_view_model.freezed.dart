// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_add_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostAddViewModel {
  TextEditingController? get titleTxtCtr => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostAddViewModelCopyWith<PostAddViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAddViewModelCopyWith<$Res> {
  factory $PostAddViewModelCopyWith(
          PostAddViewModel value, $Res Function(PostAddViewModel) then) =
      _$PostAddViewModelCopyWithImpl<$Res, PostAddViewModel>;
  @useResult
  $Res call({TextEditingController? titleTxtCtr});
}

/// @nodoc
class _$PostAddViewModelCopyWithImpl<$Res, $Val extends PostAddViewModel>
    implements $PostAddViewModelCopyWith<$Res> {
  _$PostAddViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleTxtCtr = freezed,
  }) {
    return _then(_value.copyWith(
      titleTxtCtr: freezed == titleTxtCtr
          ? _value.titleTxtCtr
          : titleTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostAddViewModelImplCopyWith<$Res>
    implements $PostAddViewModelCopyWith<$Res> {
  factory _$$PostAddViewModelImplCopyWith(_$PostAddViewModelImpl value,
          $Res Function(_$PostAddViewModelImpl) then) =
      __$$PostAddViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController? titleTxtCtr});
}

/// @nodoc
class __$$PostAddViewModelImplCopyWithImpl<$Res>
    extends _$PostAddViewModelCopyWithImpl<$Res, _$PostAddViewModelImpl>
    implements _$$PostAddViewModelImplCopyWith<$Res> {
  __$$PostAddViewModelImplCopyWithImpl(_$PostAddViewModelImpl _value,
      $Res Function(_$PostAddViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titleTxtCtr = freezed,
  }) {
    return _then(_$PostAddViewModelImpl(
      titleTxtCtr: freezed == titleTxtCtr
          ? _value.titleTxtCtr
          : titleTxtCtr // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$PostAddViewModelImpl implements _PostAddViewModel {
  _$PostAddViewModelImpl({this.titleTxtCtr});

  @override
  final TextEditingController? titleTxtCtr;

  @override
  String toString() {
    return 'PostAddViewModel(titleTxtCtr: $titleTxtCtr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostAddViewModelImpl &&
            (identical(other.titleTxtCtr, titleTxtCtr) ||
                other.titleTxtCtr == titleTxtCtr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, titleTxtCtr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostAddViewModelImplCopyWith<_$PostAddViewModelImpl> get copyWith =>
      __$$PostAddViewModelImplCopyWithImpl<_$PostAddViewModelImpl>(
          this, _$identity);
}

abstract class _PostAddViewModel implements PostAddViewModel {
  factory _PostAddViewModel({final TextEditingController? titleTxtCtr}) =
      _$PostAddViewModelImpl;

  @override
  TextEditingController? get titleTxtCtr;
  @override
  @JsonKey(ignore: true)
  _$$PostAddViewModelImplCopyWith<_$PostAddViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
