// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyInfoViewModel {
  XFile? get selectedImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyInfoViewModelCopyWith<MyInfoViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInfoViewModelCopyWith<$Res> {
  factory $MyInfoViewModelCopyWith(
          MyInfoViewModel value, $Res Function(MyInfoViewModel) then) =
      _$MyInfoViewModelCopyWithImpl<$Res, MyInfoViewModel>;
  @useResult
  $Res call({XFile? selectedImage});
}

/// @nodoc
class _$MyInfoViewModelCopyWithImpl<$Res, $Val extends MyInfoViewModel>
    implements $MyInfoViewModelCopyWith<$Res> {
  _$MyInfoViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyinfoViewModelImplCopyWith<$Res>
    implements $MyInfoViewModelCopyWith<$Res> {
  factory _$$MyinfoViewModelImplCopyWith(_$MyinfoViewModelImpl value,
          $Res Function(_$MyinfoViewModelImpl) then) =
      __$$MyinfoViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({XFile? selectedImage});
}

/// @nodoc
class __$$MyinfoViewModelImplCopyWithImpl<$Res>
    extends _$MyInfoViewModelCopyWithImpl<$Res, _$MyinfoViewModelImpl>
    implements _$$MyinfoViewModelImplCopyWith<$Res> {
  __$$MyinfoViewModelImplCopyWithImpl(
      _$MyinfoViewModelImpl _value, $Res Function(_$MyinfoViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedImage = freezed,
  }) {
    return _then(_$MyinfoViewModelImpl(
      selectedImage: freezed == selectedImage
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$MyinfoViewModelImpl implements _MyinfoViewModel {
  _$MyinfoViewModelImpl({this.selectedImage});

  @override
  final XFile? selectedImage;

  @override
  String toString() {
    return 'MyInfoViewModel(selectedImage: $selectedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyinfoViewModelImpl &&
            (identical(other.selectedImage, selectedImage) ||
                other.selectedImage == selectedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyinfoViewModelImplCopyWith<_$MyinfoViewModelImpl> get copyWith =>
      __$$MyinfoViewModelImplCopyWithImpl<_$MyinfoViewModelImpl>(
          this, _$identity);
}

abstract class _MyinfoViewModel implements MyInfoViewModel {
  factory _MyinfoViewModel({final XFile? selectedImage}) =
      _$MyinfoViewModelImpl;

  @override
  XFile? get selectedImage;
  @override
  @JsonKey(ignore: true)
  _$$MyinfoViewModelImplCopyWith<_$MyinfoViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
