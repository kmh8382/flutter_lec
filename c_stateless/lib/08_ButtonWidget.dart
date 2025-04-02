import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     TextButton(
    //       onPressed: () {
    //         print("편의상 프린트 하겠습니다.");
    //       },
    //       child: Text("TextButton"),
    //     ),
    //     ElevatedButton(
    //       onPressed: () {
    //         print("함수만 등록해서...");
    //       },
    //       child: Text("ElevatedButton"),
    //     ),
    //     IconButton(
    //       onPressed: () {
    //         print("아이콘 버튼");
    //       },
    //       icon: Icon(Icons.add_box_outlined),
    //     ),
    //   ]
    // );

    return Scaffold(
      floatingActionButton: FloatingActionButton(   // floatingActionButton는 Scaffold 안에서만 사용 가능
        onPressed: () {
          print("Floating Action Button");
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );

  }
}