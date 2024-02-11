// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      user_id: json['user_id'] as String?,
      user_name: json['user_name'] as String?,
      user_age: json['user_age'] as String?,
      user_weight: json['user_weight'] as String?,
      user_win: json['user_win'] as int?,
      user_lose: json['user_lose'] as int?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'user_age': instance.user_age,
      'user_weight': instance.user_weight,
      'user_win': instance.user_win,
      'user_lose': instance.user_lose,
      'photo': instance.photo,
    };
