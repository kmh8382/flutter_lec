import 'package:e_navigator/01_navigator.dart';
import 'package:e_navigator/02_arguments.dart';
import 'package:e_navigator/02_path_variable.dart';
import 'package:e_navigator/02_query_string.dart';
import 'package:e_navigator/02_tab_bar_view.dart';
import 'package:e_navigator/03_page_view.dart';
import 'package:e_navigator/04_bottom_navigation_bar.dart';
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
      // initialRoute: "/main",       // 01_navigator.dart
      // initialRoute: "/tab",        // 02_arguments.dart
      // initialRoute: "/pageview",   // 03_page_view.dart
      initialRoute: "/bottom",        // 04_bottom_navigation_bar.dart

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
        // 03_page_view.dart
        "/pageview": (context) => const PageViewWidget(),
        // 04_bottom_navigation_bar.dart
        "/bottom": (context) => const BottomNavigationBarPage(),
      },

      // PathVariable 또는 Query String 을 이용한 Parameter 전달 시 실행
      onGenerateRoute: (RouteSettings settings) {

        //  routeName
        final String routeName = settings.name!;

        // PathVariable 처리
        if(routeName.startsWith("/path")) {
          // "/path/10" 에서 10 추출하기
          final String id = routeName.split("/").last;
          // PathVariablePage 로 id 를 전달하며 이동
          return MaterialPageRoute(
            builder: (context) {
              return PathVariablePage(id: int.parse(id));
            }
          );
        }

        // routeName 분석을 위한 Uri 객체 생성
        Uri uri = Uri.parse(routeName);

        // Query String 처리
        if(routeName.startsWith("/query")) {

          // parameter 추출하기
          final String? strPage = uri.queryParameters["page"];
          final String? strSort = uri.queryParameters["sort"];

          // parameter 타입 변환 및 디폴트 처리
          final int page = strPage == null ? 1 : int.parse(strPage);
          final String sort = strSort?? "id,asc";

          // QueryStringPage 로 page 와 sort 전달하며 이동
          return MaterialPageRoute(
            builder: (context) => QueryStringPage(page: page, sort: sort)
          );
        }

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