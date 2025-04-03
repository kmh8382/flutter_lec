import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {

  const CheckboxWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CheckboxState();
  }
}

class _CheckboxState extends State<CheckboxWidget> {

  // 상태 변수
  late bool _isChecked;

  // 상태 변수 초기화를 위한 initState() 메소드
  @override
  void initState() {
    _isChecked = false;
    super.initState();
  }

  // UI 빌드
  @override
  Widget build(BuildContext context) {

    // // [1] Checkbox 와 Text 따로 만들기
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Checkbox(
    //       value: _isChecked,
    //       onChanged: (bool? value) {        // Checkbox 의 체쿠 여부가 onChanged 의 매개 변수 value 로 전달
    //         setState(() {
    //           // _isChecked = value!;       // 변수 뒤 ! 는 null 이 아니다 의미
    //           _isChecked = value ?? false;  // 변수 뒤 ?? 는 null 이면 이 값을 사용해라 의미
    //         });
    //       }
    //     ),
    //     Text("$_isChecked"),
    //   ],
    // );

    // [2] Checkbox 와 Text 가 하나로 관리되는 CheckboxListTile
    return CheckboxListTile(
      title: Text("$_isChecked"),
      //controlAffinity: ListTileControlAffinity.trailing,  // Checkbox 가 뒤에 위치함
      controlAffinity: ListTileControlAffinity.leading,     // Checkbox 가 앞에 위치함
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      }
    );
  }
}