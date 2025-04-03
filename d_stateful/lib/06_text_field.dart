import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {

  const TextFieldWidget({super.key});

  @override
  State<StatefulWidget> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldWidget> {

  // 입력 컨트롤러
  final TextEditingController _controller = TextEditingController();

  // 상태 변수
  String _text = "";

  // 상태 변수 변경
  void _setText(String text) {
    setState(() {
      _text = text;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("입력한 텍스트 = $_text"),
        SizedBox(
          width: 300,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),    // 네모칸
              border: UnderlineInputBorder(),     // 아랫줄
              labelText: "이름",
              // hintText: "이름 입력",
            ),
            // onChanged: (String? value) {       // 입력될 때마다
            //   _setText(value!);
            // },
            onSubmitted: (String? value) {        // 엔터를 눌렀을 때
              _setText(value!);
            },
          ),
        )
      ],
    );
  }
}