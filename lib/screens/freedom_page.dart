import 'package:flutter/material.dart';

class FreedomPage extends StatefulWidget {
  const FreedomPage({Key? key}) : super(key: key);

  @override
  State<FreedomPage> createState() => _FreedomPageState();
}

class _FreedomPageState extends State<FreedomPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Freedom Page')),
      body: Center(
        child: Text(
          'Freedom $counter',
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
