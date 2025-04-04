import 'package:flutter/material.dart';

class TabBarViewPage extends StatelessWidget {

  const TabBarViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBarViewPage"),
          backgroundColor: Colors.limeAccent,
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(icon: Icon(Icons.directions_bike), child: Text("자전거"),),
              Tab(icon: Icon(Icons.directions_bus), child: Text("  버스  "),),
              Tab(icon: Icon(Icons.directions_railway), child: Text("지하철"),),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            //-------------------- 1번째 탭 화면 --------------------//
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("arguments 를 이용한 데이터 전달"),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context, 
                        "/arguments",
                        arguments: {      // 숫자, 문자열, Map 등 다양한 형태로 전송 가능
                          "name": "tom",
                          "age": 30,
                        }
                      );
                    },
                    child: const Text("Arguments"),
                  )
                ],
              ),
            ),
            //-------------------- 2번째 탭 화면 --------------------//

            //-------------------- 3번째 탭 화면 --------------------//
          ]
        ),
      )
    );

  }

}