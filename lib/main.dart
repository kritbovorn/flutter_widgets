import 'dart:ui';

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
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            "https://picsum.photos/seed/picsum/200/300",
          ),
          fit: BoxFit.cover,
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.3),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/point-wave-noise-texture-abstract-dot-background-technological-cyberspace-background_1217-5775.jpg?size=626&ext=jpg&ga=GA1.2.1530693741.1652870331"),
                  fit: BoxFit.cover,
                  opacity: 0.05,
                ),
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white60,
                    Colors.white10,
                  ],
                ),
                border: Border.all(color: Colors.white30, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 12,
                    spreadRadius: -5,
                  )
                ]),
            child: const Text(
              'Glass',
              style: TextStyle(fontSize: 80, color: Colors.white70),
            ),
          ),
        ),
      ),
    );
  }
}
