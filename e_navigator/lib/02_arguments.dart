import 'package:e_navigator/common/ScaffoldWidget.dart';
import 'package:flutter/material.dart';

class ArgumentsPage extends StatelessWidget {

  const ArgumentsPage({super.key});

  @override
  Widget build(BuildContext context) {

    final settings = ModalRoute.of(context)!.settings;
    final routeName = settings.name;        // "/arguments"
    final arguments = settings.arguments as Map<String, dynamic>;   // {"name": "tom", "age": 30}
    final String name = arguments["name"];
    final int age = arguments["age"];

    return ScaffoldWidget(
      widget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("요청 주소 : $routeName,  이름 : $name,  나이 : $age"),
            SizedBox(height: 20),
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