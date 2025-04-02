import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello World!! Hello World!! Hello World!! Hello World!! Hello World!! Hello World!!",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
        fontFamily: "D2Coding",
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      softWrap: false,    // 자동 줄바꿈 비활성화
      maxLines: 1,        // 최대 줄 수 제한
    );
  }

}