# flutter_project   <img src="https://user-images.githubusercontent.com/10919051/178402698-b81b894c-6836-4da1-b465-6377594629e2.png" width="40" height="40">




## Git Example Apps

[Flutter ExampleApps: by iampawan](https://github.com/iampawan/FlutterExampleApps)

# BottomNavigationBar()  

## Youtube Channel  
[Johannes Mike](https://www.youtube.com/watch?v=xoKqQjSDZ60&list=RDCMUC0FD2apauvegCcsvqIBceLA&start_radio=1)  

## Preview  

https://user-images.githubusercontent.com/10919051/178453238-8bb2a788-f920-4716-9281-2cb5aa6cad92.mov  


## Use: IndexedStack to keep State of child views  

``` dart  
 IndexedStack(
    index: currentIndex,
    children: screens,
 )
```

## HomeScreen()  

``` dart
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
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: currentIndex,
        onTapped: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}  
```   

## BottomNavigationBarWidget()  

``` dart
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
```
