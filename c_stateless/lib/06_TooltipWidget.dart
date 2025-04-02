import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {

  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "안내해 드립니다.",
      height: 50.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            color: Colors.black12,
          )
        ],
        borderRadius: BorderRadius.circular(2),
        color: Colors.yellow,
        ),
      child: const Text("TooltipWidget"),
    );
  }

}