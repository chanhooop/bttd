import 'package:bttd/dataSource/data_source.dart';
import 'package:bttd/dataSource/model/board_model.dart';

class BoardRepository {
  final DataSource _dataSource = DataSource();
  late BoardModelList cachedBoardModelListData = BoardModelList();

  Future<BoardModelList> getBoardList({bool cached = false}) async {
    print('BoardRepository => getBoardList');
    if (!cached) {
      cachedBoardModelListData = await _dataSource.getBoardList();
      return cachedBoardModelListData;
    } else {
      return cachedBoardModelListData;
    }
  }
}
