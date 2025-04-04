import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {

  const BottomNavigationBarPage({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarPage> {

  // 상태 변수
  int _currentIndex = 0;

  // 페이지 (일반적으로 최대 5개까지 사용)
  static const List<Widget> _pages = [
    Center(child: Text("111111111"),),
    Center(child: Text("222222222"),),
    Center(child: Text("333333333"),),
  ];

  // 하단 네비케이션 바를 탭하면 동작하는 함수
  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 인덱스 등록
        currentIndex: _currentIndex,
        // 콜백의 매개변수를 메소드에 전달하는 퍄턴은 아래와 같 ...
        onTap: (int index) {
          _onTapped(index);
        },
        // 탭 메뉴 (아이콘, 텍스트 활용)
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "검색",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "정보",
          ),
        ],
      ),
    );
  }

}