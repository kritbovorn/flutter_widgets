import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Person Screen'),
      ),
      body: Center(
        child: Text(
          'Person Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
