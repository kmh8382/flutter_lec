import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {

  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("SnackBar 표시"),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("간단한 스낵바 알림"),
            action: SnackBarAction(
              label: "스낵바 알림 내부 이벤트",
              onPressed: () {
                print("스낵바 알림 메시지 클릭 시 동작");
              }
            ),
            duration: const Duration(seconds: 5),
          )
        );
      }
    );
  }
}