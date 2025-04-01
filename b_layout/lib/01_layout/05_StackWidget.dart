import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {

  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        Positioned(
          top: 50,
          left: 200,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          )
        ),
      ],
    );
  }

}