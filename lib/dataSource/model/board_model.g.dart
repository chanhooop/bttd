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
      post_context: json['post_context'] as String?,
      away_id: json['away_id'] as String?,
      score: json['score'] as String?,
      comment_count: json['comment_count'] as int?,
    );

Map<String, dynamic> _$$BoardModelImplToJson(_$BoardModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'post_title': instance.post_title,
      'post_context': instance.post_context,
      'away_id': instance.away_id,
      'score': instance.score,
      'comment_count': instance.comment_count,
    };
