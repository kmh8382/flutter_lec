import 'package:d_stateful/01_stateful_intro.dart';
import 'package:d_stateful/02_checkbox.dart';
import 'package:d_stateful/03_switch.dart';
import 'package:d_stateful/04_slider.dart';
import 'package:d_stateful/05_radio.dart';
import 'package:d_stateful/06_text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("StatelessWidget")),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child:
            // const StatefulIntro(),
            // const CheckboxWidget(),
            // const SwitchWidget(),
            // const SliderWidget(),
            // const RadioWidget(),
            const TextFieldWidget(),
        ),
      )
    );
  }

}