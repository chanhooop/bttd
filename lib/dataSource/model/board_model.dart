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
    String? post_context,
    String? away_id,
    String? score,
    int? comment_count,
  }) = _BoardModel;

  factory BoardModel.fromJson(Map<String, dynamic> json) =>
      _$BoardModelFromJson(json);
}
