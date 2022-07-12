import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed Page')),
      body: Center(
        child: Text(
          'Feed Screen',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
