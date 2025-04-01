import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {

  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 0.5,
      ),
      children: [
        Card(color: Colors.cyan,),
        Card(color: Colors.purple,),
        Card(color: Colors.black12,),
        Card(color: Colors.yellow,),
        Card(color: Colors.cyan,),
        Card(color: Colors.purple,),
        Card(color: Colors.black12,),
        Card(color: Colors.yellow,),
      ],
    );
  }

}


