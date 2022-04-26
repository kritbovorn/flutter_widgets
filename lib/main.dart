import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int liked = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Wrap(
              children: List.generate(5, (index) => _buildIconStars(index)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconStars(int index) {
    return Icon(
      Icons.star,
      size: 20,
      color: index < liked ? Colors.blue : Colors.grey,
    );
  }
}

// Line 45:  ต้องใช้ Wrap() เพื่อ แสดงหลายๆ widgets

