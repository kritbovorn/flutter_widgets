import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/screens/person_screen.dart';
import 'package:flutter_widgets/screens/star_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// 1. Add SingleTickerProviderStateMixin
class _HomeState extends State<Home> with TickerProviderStateMixin {
  // 2. Declare
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    // 3. Initial variable
    tabController = TabController(length: 3, vsync: this);
    // 6. Use Listener to update state
    tabController.addListener(() {
      setState(() => {});
    });
    debugPrint(tabController.index.toString());
  }

  @override
  void dispose() {
    super.dispose();
    tabController.removeListener(() {});
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tab Bar ${tabController.index + 1}',
        ), // 6. Use Listener to update state
        // 4. In bottom: property
        bottom: TabBar(
          controller: tabController, // 5. Use tabController
          tabs: const [
            //
            Tab(
              child: Text('Tab 1'),
              icon: Icon(Icons.home),
            ),
            Tab(
              child: Text('Tab 2'),
              icon: Icon(Icons.star),
            ),
            Tab(
              child: Text('Tab 3'),
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController, // 5. Use tabController
        children: const [
          HomeScreen(),
          StarScreen(),
          PersonScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 32,
        ),
        onPressed: () => {
          setState(() {
            if (tabController.index == 0) {
              tabController.index = 1;
              return;
            }
            if (tabController.index == 1) {
              tabController.index = 2;
              return;
            }
            if (tabController.index == 2) {
              tabController.index = 0;
              return;
            }
          }),
        },
      ),
    );
  }
}
