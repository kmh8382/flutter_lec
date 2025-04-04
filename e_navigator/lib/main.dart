import 'package:e_navigator/01_navigator.dart';
import 'package:e_navigator/02_arguments.dart';
import 'package:e_navigator/02_tab_bar_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),


      // 초기 라우트
      // initialRoute: "/main",   // 01_navigator.dart
      initialRoute: "/tab",

      // 네비게이션 이벤트 추적을 위한 커스텀 NavigatorObserverView 등록
      navigatorObservers: [
        NavigatorObserverView(),
      ],

      // 라우트 별 위젯 등록
      routes: {
        // 01_navigator.dart
        "/main": (context) => const MainPage(),
        "/about": (context) => const AboutPage(),
        // 02_arguments.dart
        "/tab": (context) => const TabBarViewPage(),
        "/arguments": (context) => const ArgumentsPage(),
      },

    );
  }
}


class NavigatorObserverView extends NavigatorObserver {

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    print("페이지 추가 완료 ~~~~");
  }
  
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    print("페이지 제거 완료 ~~~~");
  }

}