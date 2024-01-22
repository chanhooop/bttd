import 'package:bttd/dataRepository/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'my_info_view_model.freezed.dart';

@freezed
class MyInfoViewModel with _$MyInfoViewModel {
  factory MyInfoViewModel({
    XFile? selectedImage,

  }) = _MyinfoViewModel;
}

final MyInfoViewProvider =
    StateNotifierProvider<MyInfoViewNotifier, MyInfoViewModel>(
        (ref) => MyInfoViewNotifier(MyInfoViewModel()));

class MyInfoViewNotifier extends StateNotifier<MyInfoViewModel> {
  MyInfoViewNotifier(super.state) {
    initData();
  }

  final UserRepository _userRepository = UserRepository();

  initData() {
    state = state.copyWith(selectedImage: null);
  }

  changeImage(XFile? image) async {
    /// Todo: 아이디 바꾸기
    if (image != null) {
      bool isSuccessUpload = await _userRepository.postImageUpload(
          image.path, 'kingkim59@naver.com');
      if (isSuccessUpload) {
        state = state.copyWith(selectedImage: image);
      }
    } else {
      print('아무것도 선택하지 않았습니다.');
    }
  }
}
