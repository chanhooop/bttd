import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
part 'post_detail_viewModel.freezed.dart';

@freezed
class PostDetailViewModel with _$PostDetailViewModel {
  factory PostDetailViewModel({
    BoardModel? boardModel,
  }) = _PostDetailViewModel;
}

final postDetailViewProvider = StateNotifierProvider(
    (ref) => PostDetailViewNotifier(PostDetailViewModel()));

class PostDetailViewNotifier extends StateNotifier<PostDetailViewModel> {
  PostDetailViewNotifier(super.state);

  // 디테일 포스트 화면으로 진입
  void goDetailView(BuildContext context, BoardModel boardModel) {
    state = state.copyWith(boardModel: boardModel);
    context.pushNamed(PostDetailView.routeName);
  }
}
