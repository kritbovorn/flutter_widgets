import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed Page')),
      body: Center(
        child: Text(
          'Feed $counter',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => counter += 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}
