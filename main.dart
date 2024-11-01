import 'package:flutter/material.dart';
import 'package:flutter_application_1/item_list.dart';
import 'package:project/item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoppingMall App',
      home: ItemListPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}