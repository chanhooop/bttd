import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_add_view_model.freezed.dart';

@freezed
class PostAddViewModel with _$PostAddViewModel {
  factory PostAddViewModel({
    TextEditingController? titleTxtCtr,
  }) = _PostAddViewModel;
}
