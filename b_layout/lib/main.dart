import 'package:b_layout/01_layout/00_WidgetCombination.dart';
import 'package:b_layout/02_grid/01_GridViewWidget.dart';
import 'package:b_layout/02_grid/02_gridViewBuilderWidget.dart';
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latout Component"),
        leading: const Icon(Icons.backup),
      ),
      body:     // 우리가 보고 싶은 위젯
        //const WidgetCombination(),
        //const GridViewWidget(),
        const gridViewBuilderWidget(),
    );
  }
}