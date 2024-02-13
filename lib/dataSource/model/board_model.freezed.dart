// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoardModelList _$BoardModelListFromJson(Map<String, dynamic> json) {
  return _BoardModelList.fromJson(json);
}

/// @nodoc
mixin _$BoardModelList {
  List<BoardModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardModelListCopyWith<BoardModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardModelListCopyWith<$Res> {
  factory $BoardModelListCopyWith(
          BoardModelList value, $Res Function(BoardModelList) then) =
      _$BoardModelListCopyWithImpl<$Res, BoardModelList>;
  @useResult
  $Res call({List<BoardModel>? data});
}

/// @nodoc
class _$BoardModelListCopyWithImpl<$Res, $Val extends BoardModelList>
    implements $BoardModelListCopyWith<$Res> {
  _$BoardModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoardModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardModelListImplCopyWith<$Res>
    implements $BoardModelListCopyWith<$Res> {
  factory _$$BoardModelListImplCopyWith(_$BoardModelListImpl value,
          $Res Function(_$BoardModelListImpl) then) =
      __$$BoardModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BoardModel>? data});
}

/// @nodoc
class __$$BoardModelListImplCopyWithImpl<$Res>
    extends _$BoardModelListCopyWithImpl<$Res, _$BoardModelListImpl>
    implements _$$BoardModelListImplCopyWith<$Res> {
  __$$BoardModelListImplCopyWithImpl(
      _$BoardModelListImpl _value, $Res Function(_$BoardModelListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BoardModelListImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoardModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardModelListImpl implements _BoardModelList {
  _$BoardModelListImpl({final List<BoardModel>? data}) : _data = data;

  factory _$BoardModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardModelListImplFromJson(json);

  final List<BoardModel>? _data;
  @override
  List<BoardModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BoardModelList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardModelListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardModelListImplCopyWith<_$BoardModelListImpl> get copyWith =>
      __$$BoardModelListImplCopyWithImpl<_$BoardModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardModelListImplToJson(
      this,
    );
  }
}

abstract class _BoardModelList implements BoardModelList {
  factory _BoardModelList({final List<BoardModel>? data}) =
      _$BoardModelListImpl;

  factory _BoardModelList.fromJson(Map<String, dynamic> json) =
      _$BoardModelListImpl.fromJson;

  @override
  List<BoardModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BoardModelListImplCopyWith<_$BoardModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoardModel _$BoardModelFromJson(Map<String, dynamic> json) {
  return _BoardModel.fromJson(json);
}

/// @nodoc
mixin _$BoardModel {
  String? get user_id => throw _privateConstructorUsedError;
  String? get post_title => throw _privateConstructorUsedError;
  String? get user_age => throw _privateConstructorUsedError;
  String? get user_weight => throw _privateConstructorUsedError;
  int? get user_win => throw _privateConstructorUsedError;
  int? get user_lose => throw _privateConstructorUsedError;
  String? get post_context => throw _privateConstructorUsedError;
  String? get away_id => throw _privateConstructorUsedError;
  bool? get score => throw _privateConstructorUsedError;
  int? get comment_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardModelCopyWith<BoardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardModelCopyWith<$Res> {
  factory $BoardModelCopyWith(
          BoardModel value, $Res Function(BoardModel) then) =
      _$BoardModelCopyWithImpl<$Res, BoardModel>;
  @useResult
  $Res call(
      {String? user_id,
      String? post_title,
      String? user_age,
      String? user_weight,
      int? user_win,
      int? user_lose,
      String? post_context,
      String? away_id,
      bool? score,
      int? comment_count});
}

/// @nodoc
class _$BoardModelCopyWithImpl<$Res, $Val extends BoardModel>
    implements $BoardModelCopyWith<$Res> {
  _$BoardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? post_title = freezed,
    Object? user_age = freezed,
    Object? user_weight = freezed,
    Object? user_win = freezed,
    Object? user_lose = freezed,
    Object? post_context = freezed,
    Object? away_id = freezed,
    Object? score = freezed,
    Object? comment_count = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_title: freezed == post_title
          ? _value.post_title
          : post_title // ignore: cast_nullable_to_non_nullable
              as String?,
      user_age: freezed == user_age
          ? _value.user_age
          : user_age // ignore: cast_nullable_to_non_nullable
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
      post_context: freezed == post_context
          ? _value.post_context
          : post_context // ignore: cast_nullable_to_non_nullable
              as String?,
      away_id: freezed == away_id
          ? _value.away_id
          : away_id // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as bool?,
      comment_count: freezed == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardModelImplCopyWith<$Res>
    implements $BoardModelCopyWith<$Res> {
  factory _$$BoardModelImplCopyWith(
          _$BoardModelImpl value, $Res Function(_$BoardModelImpl) then) =
      __$$BoardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user_id,
      String? post_title,
      String? user_age,
      String? user_weight,
      int? user_win,
      int? user_lose,
      String? post_context,
      String? away_id,
      bool? score,
      int? comment_count});
}

/// @nodoc
class __$$BoardModelImplCopyWithImpl<$Res>
    extends _$BoardModelCopyWithImpl<$Res, _$BoardModelImpl>
    implements _$$BoardModelImplCopyWith<$Res> {
  __$$BoardModelImplCopyWithImpl(
      _$BoardModelImpl _value, $Res Function(_$BoardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? post_title = freezed,
    Object? user_age = freezed,
    Object? user_weight = freezed,
    Object? user_win = freezed,
    Object? user_lose = freezed,
    Object? post_context = freezed,
    Object? away_id = freezed,
    Object? score = freezed,
    Object? comment_count = freezed,
  }) {
    return _then(_$BoardModelImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      post_title: freezed == post_title
          ? _value.post_title
          : post_title // ignore: cast_nullable_to_non_nullable
              as String?,
      user_age: freezed == user_age
          ? _value.user_age
          : user_age // ignore: cast_nullable_to_non_nullable
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
      post_context: freezed == post_context
          ? _value.post_context
          : post_context // ignore: cast_nullable_to_non_nullable
              as String?,
      away_id: freezed == away_id
          ? _value.away_id
          : away_id // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as bool?,
      comment_count: freezed == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardModelImpl implements _BoardModel {
  _$BoardModelImpl(
      {this.user_id,
      this.post_title,
      this.user_age,
      this.user_weight,
      this.user_win,
      this.user_lose,
      this.post_context,
      this.away_id,
      this.score,
      this.comment_count});

  factory _$BoardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardModelImplFromJson(json);

  @override
  final String? user_id;
  @override
  final String? post_title;
  @override
  final String? user_age;
  @override
  final String? user_weight;
  @override
  final int? user_win;
  @override
  final int? user_lose;
  @override
  final String? post_context;
  @override
  final String? away_id;
  @override
  final bool? score;
  @override
  final int? comment_count;

  @override
  String toString() {
    return 'BoardModel(user_id: $user_id, post_title: $post_title, user_age: $user_age, user_weight: $user_weight, user_win: $user_win, user_lose: $user_lose, post_context: $post_context, away_id: $away_id, score: $score, comment_count: $comment_count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardModelImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.post_title, post_title) ||
                other.post_title == post_title) &&
            (identical(other.user_age, user_age) ||
                other.user_age == user_age) &&
            (identical(other.user_weight, user_weight) ||
                other.user_weight == user_weight) &&
            (identical(other.user_win, user_win) ||
                other.user_win == user_win) &&
            (identical(other.user_lose, user_lose) ||
                other.user_lose == user_lose) &&
            (identical(other.post_context, post_context) ||
                other.post_context == post_context) &&
            (identical(other.away_id, away_id) || other.away_id == away_id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.comment_count, comment_count) ||
                other.comment_count == comment_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user_id,
      post_title,
      user_age,
      user_weight,
      user_win,
      user_lose,
      post_context,
      away_id,
      score,
      comment_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      __$$BoardModelImplCopyWithImpl<_$BoardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardModelImplToJson(
      this,
    );
  }
}

abstract class _BoardModel implements BoardModel {
  factory _BoardModel(
      {final String? user_id,
      final String? post_title,
      final String? user_age,
      final String? user_weight,
      final int? user_win,
      final int? user_lose,
      final String? post_context,
      final String? away_id,
      final bool? score,
      final int? comment_count}) = _$BoardModelImpl;

  factory _BoardModel.fromJson(Map<String, dynamic> json) =
      _$BoardModelImpl.fromJson;

  @override
  String? get user_id;
  @override
  String? get post_title;
  @override
  String? get user_age;
  @override
  String? get user_weight;
  @override
  int? get user_win;
  @override
  int? get user_lose;
  @override
  String? get post_context;
  @override
  String? get away_id;
  @override
  bool? get score;
  @override
  int? get comment_count;
  @override
  @JsonKey(ignore: true)
  _$$BoardModelImplCopyWith<_$BoardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  String? get request_form_id => throw _privateConstructorUsedError;
  String? get request_user_id => throw _privateConstructorUsedError;
  String? get request_context => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get request_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {String? request_form_id,
      String? request_user_id,
      String? request_context,
      String? photo,
      String? request_date});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request_form_id = freezed,
    Object? request_user_id = freezed,
    Object? request_context = freezed,
    Object? photo = freezed,
    Object? request_date = freezed,
  }) {
    return _then(_value.copyWith(
      request_form_id: freezed == request_form_id
          ? _value.request_form_id
          : request_form_id // ignore: cast_nullable_to_non_nullable
              as String?,
      request_user_id: freezed == request_user_id
          ? _value.request_user_id
          : request_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      request_context: freezed == request_context
          ? _value.request_context
          : request_context // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      request_date: freezed == request_date
          ? _value.request_date
          : request_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? request_form_id,
      String? request_user_id,
      String? request_context,
      String? photo,
      String? request_date});
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request_form_id = freezed,
    Object? request_user_id = freezed,
    Object? request_context = freezed,
    Object? photo = freezed,
    Object? request_date = freezed,
  }) {
    return _then(_$CommentModelImpl(
      request_form_id: freezed == request_form_id
          ? _value.request_form_id
          : request_form_id // ignore: cast_nullable_to_non_nullable
              as String?,
      request_user_id: freezed == request_user_id
          ? _value.request_user_id
          : request_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      request_context: freezed == request_context
          ? _value.request_context
          : request_context // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      request_date: freezed == request_date
          ? _value.request_date
          : request_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl implements _CommentModel {
  _$CommentModelImpl(
      {this.request_form_id,
      this.request_user_id,
      this.request_context,
      this.photo,
      this.request_date});

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  @override
  final String? request_form_id;
  @override
  final String? request_user_id;
  @override
  final String? request_context;
  @override
  final String? photo;
  @override
  final String? request_date;

  @override
  String toString() {
    return 'CommentModel(request_form_id: $request_form_id, request_user_id: $request_user_id, request_context: $request_context, photo: $photo, request_date: $request_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.request_form_id, request_form_id) ||
                other.request_form_id == request_form_id) &&
            (identical(other.request_user_id, request_user_id) ||
                other.request_user_id == request_user_id) &&
            (identical(other.request_context, request_context) ||
                other.request_context == request_context) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.request_date, request_date) ||
                other.request_date == request_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, request_form_id, request_user_id,
      request_context, photo, request_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel(
      {final String? request_form_id,
      final String? request_user_id,
      final String? request_context,
      final String? photo,
      final String? request_date}) = _$CommentModelImpl;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override
  String? get request_form_id;
  @override
  String? get request_user_id;
  @override
  String? get request_context;
  @override
  String? get photo;
  @override
  String? get request_date;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
