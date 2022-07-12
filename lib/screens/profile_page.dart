import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Text(
          'Profile $counter',
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
