import 'package:bttd/core/utills.dart';
import 'package:bttd/dataRepository/board_repository.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'post_detail_viewModel.freezed.dart';

/// 뷰 모델
@freezed
class PostDetailViewModel with _$PostDetailViewModel {
  factory PostDetailViewModel({
    BoardModel? boardModel,
  }) = _PostDetailViewModel;
}

/// 프로바이더
final postDetailViewProvider =
    StateNotifierProvider<PostDetailViewNotifier, PostDetailViewModel>(
        (ref) => PostDetailViewNotifier(PostDetailViewModel()));

/// 노티파이어
class PostDetailViewNotifier extends StateNotifier<PostDetailViewModel> {
  PostDetailViewNotifier(super.state);

  Utils utils = Utils();
  BoardRepository dataRepository = BoardRepository();

  // 디테일 포스트 화면으로 진입
  Future<bool> goDetailView(BuildContext context,
      {required int? postId}) async {

    if (postId == null) {
      utils.showToast(msg: '게시글 오류', isError: true);
      return false;
    } else {
      BoardModel boardModel = await dataRepository.getBoard(postId);
      print('boardModel 확인 : ${boardModel.post_id}');
      print('boardModel 확인 : ${boardModel.user_weight}');
      state = state.copyWith(boardModel: boardModel);
      context.pushNamed(PostDetailView.routeName,
          extra: 1);
      return true;
    }
  }
}
