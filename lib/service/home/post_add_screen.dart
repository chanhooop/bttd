import 'package:bttd/core/layout/default_layout.dart';
import 'package:bttd/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PostAddScreen extends StatelessWidget {
  static String routeName = 'PostAddScreen';
  const PostAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

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
              '나이 : ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '무게 : ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              '전적 : ',
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
