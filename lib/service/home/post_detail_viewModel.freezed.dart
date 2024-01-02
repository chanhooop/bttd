// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_viewModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostDetailViewModel {
  BoardModel? get boardModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDetailViewModelCopyWith<PostDetailViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailViewModelCopyWith<$Res> {
  factory $PostDetailViewModelCopyWith(
          PostDetailViewModel value, $Res Function(PostDetailViewModel) then) =
      _$PostDetailViewModelCopyWithImpl<$Res, PostDetailViewModel>;
  @useResult
  $Res call({BoardModel? boardModel});

  $BoardModelCopyWith<$Res>? get boardModel;
}

/// @nodoc
class _$PostDetailViewModelCopyWithImpl<$Res, $Val extends PostDetailViewModel>
    implements $PostDetailViewModelCopyWith<$Res> {
  _$PostDetailViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardModel = freezed,
  }) {
    return _then(_value.copyWith(
      boardModel: freezed == boardModel
          ? _value.boardModel
          : boardModel // ignore: cast_nullable_to_non_nullable
              as BoardModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardModelCopyWith<$Res>? get boardModel {
    if (_value.boardModel == null) {
      return null;
    }

    return $BoardModelCopyWith<$Res>(_value.boardModel!, (value) {
      return _then(_value.copyWith(boardModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostDetailViewModelImplCopyWith<$Res>
    implements $PostDetailViewModelCopyWith<$Res> {
  factory _$$PostDetailViewModelImplCopyWith(_$PostDetailViewModelImpl value,
          $Res Function(_$PostDetailViewModelImpl) then) =
      __$$PostDetailViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BoardModel? boardModel});

  @override
  $BoardModelCopyWith<$Res>? get boardModel;
}

/// @nodoc
class __$$PostDetailViewModelImplCopyWithImpl<$Res>
    extends _$PostDetailViewModelCopyWithImpl<$Res, _$PostDetailViewModelImpl>
    implements _$$PostDetailViewModelImplCopyWith<$Res> {
  __$$PostDetailViewModelImplCopyWithImpl(_$PostDetailViewModelImpl _value,
      $Res Function(_$PostDetailViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardModel = freezed,
  }) {
    return _then(_$PostDetailViewModelImpl(
      boardModel: freezed == boardModel
          ? _value.boardModel
          : boardModel // ignore: cast_nullable_to_non_nullable
              as BoardModel?,
    ));
  }
}

/// @nodoc

class _$PostDetailViewModelImpl implements _PostDetailViewModel {
  _$PostDetailViewModelImpl({this.boardModel});

  @override
  final BoardModel? boardModel;

  @override
  String toString() {
    return 'PostDetailViewModel(boardModel: $boardModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailViewModelImpl &&
            (identical(other.boardModel, boardModel) ||
                other.boardModel == boardModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boardModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailViewModelImplCopyWith<_$PostDetailViewModelImpl> get copyWith =>
      __$$PostDetailViewModelImplCopyWithImpl<_$PostDetailViewModelImpl>(
          this, _$identity);
}

abstract class _PostDetailViewModel implements PostDetailViewModel {
  factory _PostDetailViewModel({final BoardModel? boardModel}) =
      _$PostDetailViewModelImpl;

  @override
  BoardModel? get boardModel;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailViewModelImplCopyWith<_$PostDetailViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
