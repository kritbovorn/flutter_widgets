import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Text(
          'Home Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
