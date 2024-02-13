// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardModelListImpl _$$BoardModelListImplFromJson(Map<String, dynamic> json) =>
    _$BoardModelListImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BoardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BoardModelListImplToJson(
        _$BoardModelListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$BoardModelImpl _$$BoardModelImplFromJson(Map<String, dynamic> json) =>
    _$BoardModelImpl(
      user_id: json['user_id'] as String?,
      post_title: json['post_title'] as String?,
      user_age: json['user_age'] as String?,
      user_weight: json['user_weight'] as String?,
      user_win: json['user_win'] as int?,
      user_lose: json['user_lose'] as int?,
      post_context: json['post_context'] as String?,
      away_id: json['away_id'] as String?,
      score: json['score'] as bool?,
      comment_count: json['comment_count'] as int?,
    );

Map<String, dynamic> _$$BoardModelImplToJson(_$BoardModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'post_title': instance.post_title,
      'user_age': instance.user_age,
      'user_weight': instance.user_weight,
      'user_win': instance.user_win,
      'user_lose': instance.user_lose,
      'post_context': instance.post_context,
      'away_id': instance.away_id,
      'score': instance.score,
      'comment_count': instance.comment_count,
    };

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      request_form_id: json['request_form_id'] as String?,
      request_user_id: json['request_user_id'] as String?,
      request_context: json['request_context'] as String?,
      photo: json['photo'] as String?,
      request_date: json['request_date'] as String?,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'request_form_id': instance.request_form_id,
      'request_user_id': instance.request_user_id,
      'request_context': instance.request_context,
      'photo': instance.photo,
      'request_date': instance.request_date,
    };
