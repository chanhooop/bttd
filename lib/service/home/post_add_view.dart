import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:bttd/dataSource/model/user_model.dart';
import 'package:bttd/service/user/sign_in_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostAddView extends ConsumerWidget {
  static String routeName = 'PostAddView';
  const PostAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserModel userModel = ref.watch(SignInViewProvider).userModel ?? UserModel();

    return DefaultLayout(
      title: '게시글 등록',
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: AlwaysScrollableScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Text(
                  '제목 : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Expanded(child: CustomTextFormField())
              ],
            ),
            Row(
              children: [
                Text(
                  '희망 지역 : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Expanded(child: CustomTextFormField())
              ],
            ),
            Row(
              children: [
                Text(
                  '희망날짜시간 : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    _selectDate(context).then((value) => _selectTime(context));
                  },
                  child: Text('날짜를 선택해 주세요'),
                ))
              ],
            ),
            Text(
              '나이 : ${userModel.user_age}세',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '무게 : ${userModel.user_weight}kg',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '전적 : ${userModel.user_win}승 ${userModel.user_lose}패',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: CustomTextFormField(
                  maxLine: null,
                  expands: true,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('작성하기'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// 날짜 선택
Future<void> _selectDate(BuildContext context) async {
  DateTime selectedDate = DateTime.now();

  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  if (picked != null && picked != selectedDate) {
    print('선택한 날짜: ${picked.toString()}');
  }
}

// 시간 선택
Future<void> _selectTime(BuildContext context) async {
  TimeOfDay selectedTime = TimeOfDay.now();

  final TimeOfDay? picked = await showTimePicker(
    context: context,
    initialTime: selectedTime,
  );

  if (picked != null && picked != selectedTime) {
    print('선택한 시간: ${picked.format(context)}');
  }
}
