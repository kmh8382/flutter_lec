import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {

  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      size: 64.0,
      color: Colors.amber,
      semanticLabel: 'star icon',
    );
  }

}