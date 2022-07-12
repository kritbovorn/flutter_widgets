import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Text(
          'Profile Screen',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
