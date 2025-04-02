import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {

  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {

    // return Image(
    //   image: AssetImage("assets/images/cat.jpg"),
    //   width: 300,
    // );


    return const Image(
      image: NetworkImage("https://ssl.pstatic.net/melona/libs/1529/1529720/fe686d56bbce515f82f0_20250401163958915.jpg",),
      width: 300,
    );
  }
}