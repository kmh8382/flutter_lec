import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {

  const DialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   onPressed: () {
    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return Dialog(
    //           child: OutlinedButton(
    //             onPressed: () {
    //               Navigator.of(context).pop("Hello World");    // 대화상자를 닫으면 "Hello World"를 반환
    //             },
    //             child: Text("확인"),
    //           ),
    //         );
    //       }
    //     ).then((res) {     // 반환된 "Hello World"가 전달되는 res
    //       print(res);
    //     });
    //   },
    //   child: const Text("대화상자 열기"),
    // );

    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("알림제목"),
              content: Text("알림내용"),
              actions: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop("ok");
                  },
                  child: Text("확인"),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop("cancel");
                  },
                  child: Text("취소"),
                ),
              ],
            );
          }
        ).then((res) {
          print(res);
        });
      },
      child: const Text("대화상자 열기"),
    );
  }
}