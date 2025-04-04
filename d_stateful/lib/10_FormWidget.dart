import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {

  const FormWidget({super.key});

  @override
  State<StatefulWidget> createState() => _FormState();
}

class _FormState extends State<FormWidget> {

  // GlobalKey 에 FormState 를 할당하고 이키를 Form 의 key로 등록하면 Form 의 각종 상태 변화를 추적할 수 있습니다.
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,  // 폼 유호성 검사, 폼 입력 데이터 저장, 폼 초기화 등
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "이름",
              ),
              validator: (String? value) {
                if(value == null || value.isEmpty) {
                  return "이름 입력 필요";
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 현재 Form 의 상태를 확인하여 모든 TextFormField 위젯의 유효성을 검사합니다.
                // 각 입력 필드의 validate() 함수를 호출하여 유효성 검사를 진행하고,
                // 모든 입력 필드가 통과하면 true, 아니면 false 를 반환합니다.
                if(_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("입력 확인"))
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("노 입력"))
                  );
                }
              },
              child: const Text("제출"),
            )
          ],
        ),
      ),
    );
  }
}