// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_viewModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenViewModel {
  BoardModelList? get list => throw _privateConstructorUsedError;
  bool get listDataError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenViewModelCopyWith<HomeScreenViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenViewModelCopyWith<$Res> {
  factory $HomeScreenViewModelCopyWith(
          HomeScreenViewModel value, $Res Function(HomeScreenViewModel) then) =
      _$HomeScreenViewModelCopyWithImpl<$Res, HomeScreenViewModel>;
  @useResult
  $Res call({BoardModelList? list, bool listDataError});

  $BoardModelListCopyWith<$Res>? get list;
}

/// @nodoc
class _$HomeScreenViewModelCopyWithImpl<$Res, $Val extends HomeScreenViewModel>
    implements $HomeScreenViewModelCopyWith<$Res> {
  _$HomeScreenViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? listDataError = null,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as BoardModelList?,
      listDataError: null == listDataError
          ? _value.listDataError
          : listDataError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardModelListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $BoardModelListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeScreenViewModelImplCopyWith<$Res>
    implements $HomeScreenViewModelCopyWith<$Res> {
  factory _$$HomeScreenViewModelImplCopyWith(_$HomeScreenViewModelImpl value,
          $Res Function(_$HomeScreenViewModelImpl) then) =
      __$$HomeScreenViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BoardModelList? list, bool listDataError});

  @override
  $BoardModelListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$HomeScreenViewModelImplCopyWithImpl<$Res>
    extends _$HomeScreenViewModelCopyWithImpl<$Res, _$HomeScreenViewModelImpl>
    implements _$$HomeScreenViewModelImplCopyWith<$Res> {
  __$$HomeScreenViewModelImplCopyWithImpl(_$HomeScreenViewModelImpl _value,
      $Res Function(_$HomeScreenViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? listDataError = null,
  }) {
    return _then(_$HomeScreenViewModelImpl(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as BoardModelList?,
      listDataError: null == listDataError
          ? _value.listDataError
          : listDataError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeScreenViewModelImpl implements _HomeScreenViewModel {
  _$HomeScreenViewModelImpl({this.list, required this.listDataError});

  @override
  final BoardModelList? list;
  @override
  final bool listDataError;

  @override
  String toString() {
    return 'HomeScreenViewModel(list: $list, listDataError: $listDataError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenViewModelImpl &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.listDataError, listDataError) ||
                other.listDataError == listDataError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, listDataError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenViewModelImplCopyWith<_$HomeScreenViewModelImpl> get copyWith =>
      __$$HomeScreenViewModelImplCopyWithImpl<_$HomeScreenViewModelImpl>(
          this, _$identity);
}

abstract class _HomeScreenViewModel implements HomeScreenViewModel {
  factory _HomeScreenViewModel(
      {final BoardModelList? list,
      required final bool listDataError}) = _$HomeScreenViewModelImpl;

  @override
  BoardModelList? get list;
  @override
  bool get listDataError;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenViewModelImplCopyWith<_$HomeScreenViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
