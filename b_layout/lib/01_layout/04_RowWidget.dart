import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {

  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        Expanded(flex: 1, child: Text("1st Text"),),
        Expanded(flex: 2, child: Text("2nd Text")),
        Expanded(flex: 3, child: Text("3rd Text")),
      ],
    );
  }

}