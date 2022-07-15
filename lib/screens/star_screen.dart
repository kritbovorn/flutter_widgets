import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      appBar: AppBar(
        title: const Text('Star Screen'),
      ),
      body: Center(
        child: Text(
          'Star Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
