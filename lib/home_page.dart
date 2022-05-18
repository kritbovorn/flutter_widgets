import 'package:flutter/material.dart';
import 'package:flutter_widgets/tab_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('T A B B A R'),
        ),
        body: const TabBarWidget(),
      ),
    );
  }
}
