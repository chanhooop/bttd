import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_model.freezed.dart';
part 'board_model.g.dart';

@freezed
class BoardModelList with _$BoardModelList {
  factory BoardModelList({
    List<BoardModel>? data,
  }) = _BoardModelList;

  factory BoardModelList.fromJson(Map<String, dynamic> json) =>
      _$BoardModelListFromJson(json);
}

@freezed
class BoardModel with _$BoardModel {
  factory BoardModel({
    String? user_id,
    String? post_title,
    String? user_age,
    String? user_weight,
    int? user_win,
    int? user_lose,
    String? post_context,
    String? away_id,
    bool? score,
    int? comment_count,
  }) = _BoardModel;

  factory BoardModel.fromJson(Map<String, dynamic> json) =>
      _$BoardModelFromJson(json);
}

@freezed
class CommentModel with _$CommentModel{
  factory CommentModel({
    String? request_form_id,
    String? request_user_id,
    String? request_context,
    String? photo,
    String? request_date,
}) = _CommentModel;

factory CommentModel.fromJson(Map<String, dynamic> json) =>
_$CommentModelFromJson(json);
}