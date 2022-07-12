import 'package:flutter/material.dart';
import 'package:flutter_project/basic_bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:flutter_project/screens/chat_page.dart';
import 'package:flutter_project/screens/feed_page.dart';
import 'package:flutter_project/screens/freedom_page.dart';
import 'package:flutter_project/screens/home_page.dart';
import 'package:flutter_project/screens/profile_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = [
    const HomePage(),
    const FeedPage(),
    const ChatPage(),
    const ProfilePage(),
    const FreedomPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: currentIndex,
        onTapped: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
