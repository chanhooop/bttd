import 'package:bttd/config/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final int? maxLine;
  final bool? expands;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField(
      {Key? key,
      this.hintText,
      this.errorText,
      this.obscureText = false,
      this.autofocus = true,
      this.onChanged,
      this.maxLine = 1,
      this.expands})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
      color: INPUT_BORDER_COLOR,
      width: 1.0,
    ));

    return SizedBox(
      child: TextFormField(
        maxLines: maxLine,
        expands: expands ?? false,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        cursorColor: PRIMARY_COLOR,
        // 비밀번호 입력할 때
        obscureText: obscureText,
        // 자동으로 포커스 잡아주기
        autofocus: autofocus,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintText: hintText,
          errorText: errorText,
          hintStyle: const TextStyle(color: BODY_TEXT_COLOR, fontSize: 10.0),
          // false - 배경색 없음
          // true - 배경색 있음
          filled: true,
          // 배경색
          fillColor: INPUT_BG_COLOR,
          // 모든 Input 상태의 기본 스타일 세팅
          border: baseBorder,
          enabledBorder: baseBorder,
          // 선택된 Input 상태의 기본 스타일 세팅
          focusedBorder: baseBorder.copyWith(
              borderSide: baseBorder.borderSide.copyWith(color: PRIMARY_COLOR)),
        ),
      ),
    );
  }
}
