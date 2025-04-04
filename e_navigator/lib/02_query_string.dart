import 'package:e_navigator/common/ScaffoldWidget.dart';
import 'package:flutter/material.dart';

class QueryStringPage extends StatelessWidget {

  final int page;
  final String sort;

  const QueryStringPage ({super.key, required this.page, required this.sort});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      widget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Parameter page = $page, Parameter sort = $sort"),
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