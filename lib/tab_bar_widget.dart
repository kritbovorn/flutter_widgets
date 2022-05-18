import 'package:flutter/material.dart';
import 'package:flutter_widgets/tabs/first_tab.dart';
import 'package:flutter_widgets/tabs/second_tab.dart';
import 'package:flutter_widgets/tabs/third_tab.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController _controller = TabController(length: 3, vsync: this);
    List<IconData> icons = [
      Icons.home,
      Icons.apple,
      Icons.android,
    ];
    return Column(
      children: [
        TabBar(
          // controller: _controller,
          tabs: icons
              .asMap()
              .entries
              .map(
                (e) => Tab(
                  icon: Icon(
                    e.value,
                    color: Colors.purple,
                  ),
                ),
              )
              .toList(),
        ),
        const Expanded(
          child: TabBarView(
            // controller: _controller,
            children: [
              FirstTab(),
              SecondTab(),
              ThirdTab(),
            ],
          ),
        ),
      ],
    );
  }
}
