import 'package:flutter/material.dart';
import 'my_text_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyTextWidget('Hello World!', Colors.white,),
    );
  }
}
