import 'package:flutter/material.dart';
import 'package:minor_flutter/pages/categories/categories_view.dart';

import 'pages/layout.dart';

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
            useMaterial3: true,
            scaffoldBackgroundColor: Color.fromARGB(255, 241, 241, 241)),
        home: const LayoutApp());
  }
}
