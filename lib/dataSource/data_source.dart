import 'package:bttd/core/dio.dart';
import 'package:bttd/dataSource/model/board_model.dart';
import 'package:dio/dio.dart';

class DataSource {
  /// 게시글 전체 리스트 가져오기
  Future<BoardModelList> getBoardList() async {
    print('DataSource => getBoardList');
    Response _response = await dio.get('/api/getAllBoard');

    return BoardModelList.fromJson(_response.data);
  }
}
