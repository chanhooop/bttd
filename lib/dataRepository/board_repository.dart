import 'package:bttd/dataSource/data_source.dart';
import 'package:bttd/dataSource/model/board_model.dart';

class BoardRepository {
  final DataSource _dataSource = DataSource();
  late BoardModelList cachedBoardListData = BoardModelList(); // 홈 전체 리스트
  late BoardModel cachedBoardModel = BoardModel(); // 각각 디테일 화면 관련 데이터

  /// 홈 화면 전체 리스트 데이터
  Future<BoardModelList> getBoardList({bool cached = false}) async {
    print('BoardRepository => getBoardList');
    if (!cached) {
      cachedBoardListData = await _dataSource.getBoardList();
      return cachedBoardListData;
    } else {
      return cachedBoardListData;
    }
  }

  /// 각각 게시글 데이터
  Future<BoardModel> getBoard({bool cached = false}) async {
    print('BoardRepository => getBoard');
    // if (!cached) {
    //   cachedBoardListData = await _dataSource.getBoardList();
    //   return cachedBoardListData;
    // } else {
    //   return cachedBoardListData;
    // }
    return cachedBoardModel;
  }
}
