import 'package:e_navigator/common/ScaffoldWidget.dart';
import 'package:flutter/material.dart';

class PathVariablePage extends StatelessWidget {

  final int id;

  const PathVariablePage ({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      widget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Path Variable : $id"),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("뒤로가기"),
            )
          ],
        ),
      )
    );
  }
}