import 'package:flutter/material.dart';

class gridViewBuilderWidget extends StatelessWidget {

  const gridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4
      ),
      itemBuilder: (BuildContext context, int index) {     // (context, index) 생략가능
        return Card(
          color: Colors.amber,
          child: Text("${index + 1}", textAlign: TextAlign.center,),
        );
      },
      itemCount: 16,
    );
  }

}