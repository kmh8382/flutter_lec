import 'package:flutter/material.dart';

class placeholderWidget extends StatelessWidget {

  const placeholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Placeholder(
    //   fallbackWidth: 50,   // 적용이 안됨
    //   fallbackHeight: 50,  // 적용이 안됨
    //   color: Colors.lightBlueAccent,
    // );

    return SizedBox(
      width: 150,
      height: 100,
      child: Placeholder(
        fallbackWidth: 50,   // 적용이 안됨
        fallbackHeight: 50,  // 적용이 안됨
        color: Colors.lightBlueAccent,
      ),
    );
  }
}