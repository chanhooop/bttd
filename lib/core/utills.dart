import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  // 토스트 메세지창
  void showToast(
      {required String msg,
      required bool isError,
      ToastGravity? toastGravity}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: toastGravity ?? ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isError ? Colors.red : Colors.white24,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  // 다이얼로그 알림창
  void customShowDialog(
      {required BuildContext context,
      String? title,
      String? content,
        List<Widget>? actions
      }) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(title ?? ''),
            content: Text(content ?? ''),
            actions: actions,
          );
          // return Center(
          //   child: Container(
          //     width: 300,
          //     height: 200,
          //     color: Colors.red,
          //     child: Stack(
          //       children: [
          //         // 제목
          //         if (title != null)
          //           Positioned(top: 10, left: 10, child: Text(title)),
          //         // 내용
          //         if (content != null)
          //           Positioned(top: 40, left: 10, child: Text(content)),
          //         // 버튼 부분
          //         Positioned(
          //             bottom: 10,
          //             right: 10,
          //             child: Row(
          //               children: [
          //                 TextButton(onPressed: func_1, child: Text(button_1)),
          //                 if(button_2 != null)...[
          //                   SizedBox(width: 20,),
          //                   TextButton(onPressed: func_2 ?? (){}, child: Text(button_2)),
          //                 ]
          //               ],
          //             ))
          //       ],
          //     ),
          //   ),
          // );
        });
  }
}
