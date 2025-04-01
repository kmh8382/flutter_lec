import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {

  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //spacing: 20.0,
      //direction: Axis.vertical,
      children: [
        SizedBox(
          width: 200,
          child: Text("1st Text", textAlign: TextAlign.center,),
        ),
        SizedBox(
          width: 200,
          child: Text("2ns Text", textAlign: TextAlign.center,),
        ),
        SizedBox(
          width: 200,
          child: Text("3rd Text", textAlign: TextAlign.center,),
        ),
        SizedBox(
          width: 200,
          child: Text("4th Text", textAlign: TextAlign.center,),
        ),
      ],
    );
  }

}