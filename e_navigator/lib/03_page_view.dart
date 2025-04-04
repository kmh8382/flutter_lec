import 'package:e_navigator/common/ScaffoldWidget.dart';
import 'package:flutter/material.dart';

// PageView
// 어려 페이지를 ...

class PageViewWidget extends StatelessWidget {

  const PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {

    // PageController
    final PageController _controller = PageController(initialPage: 0);

    return ScaffoldWidget(
      widget: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        // scrollDirection: Axis.vertical,   // Axis.horizontal(죄우 디폴트) Axis.vertical (상하)
        children: [
          Container(
            color: Colors.red,
            child: Center(child: const Text("11111111111111111")),
          ),
          Container(
            color: Colors.green,
            child: Center(child: const Text("22222222222222222")),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: const Text("33333333333333333")),
          ),
        ],

      )
    );

  }
}