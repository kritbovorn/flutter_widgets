// https://www.youtube.com/watch?v=c09XiwOZKsI&list=RDCMUCQ00Ywz-ygK-yHzKluEsABA&start_radio=1

import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
