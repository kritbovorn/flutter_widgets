// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTapped;
  const BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
    required this.onTapped,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.indigo,
      type: BottomNavigationBarType.fixed,
      currentIndex: widget.currentIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      onTap: (index) => widget.onTapped(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          // backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Feed',
          // backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
          // backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Contact',
          // backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplanemode_active),
          label: 'Freedom',
        )
      ],
    );
  }
}
