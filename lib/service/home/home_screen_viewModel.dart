import 'package:bttd/dataRepository/board_repository.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:bttd/service/home/post_detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
part 'home_screen_viewModel.freezed.dart';

@freezed
class HomeScreenViewModel with _$HomeScreenViewModel {
  factory HomeScreenViewModel({
    BoardModelList? list,
    required bool listDataError,
  }) = _HomeScreenViewModel;
}

final homeScreenProvider =
    StateNotifierProvider<HomeScreenNotifier, HomeScreenViewModel>(
        (ref) => HomeScreenNotifier(HomeScreenViewModel(listDataError: false)));

class HomeScreenNotifier extends StateNotifier<HomeScreenViewModel> {
  final BoardRepository _boardRepository = BoardRepository();

  HomeScreenNotifier(super._state) {
    initData();
  }

  /// 데이터 초기화
  Future<HomeScreenViewModel> initData() async {
    print('HomeScreenViewModel : initData');
    try {
      BoardModelList _list = await _boardRepository.getBoardList();
      return state = state.copyWith(list: _list);
    } catch (e) {
      return state = state.copyWith(listDataError: true);
    }
  }

  // 테스트
  void test() {
    List<BoardModel> test = [];
    List<BoardModel> _boardModel = state.list!.data!;
    _boardModel.forEach((element) {
      if (element.post_title == 'tttt123ttt') {
        element = element.copyWith(post_title: '테스트입니다.');
      }
      test.add(element);
    });
    state = state.copyWith(list: state.list!.copyWith(data: test));
  }

  // 테스트2
  Future<HomeScreenViewModel> test2() async {
    BoardModelList _list = await _boardRepository.getBoardList(cached: true);
    return state = state.copyWith(list: _list);
  }
}
