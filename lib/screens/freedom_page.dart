import 'package:flutter/material.dart';

class FreedomPage extends StatelessWidget {
  const FreedomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Freedom Page')),
      body: Center(
        child: Text(
          'Freedom Screen',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
