import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastWidget extends StatelessWidget {

  const ToastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Fluttertoast.showToast(
          msg: "메시지입니다.",
        );
      },
      child: Text("토스트 버튼")
    );
  }
}