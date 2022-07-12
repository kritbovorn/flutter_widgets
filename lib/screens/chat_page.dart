import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Page'),
      ),
      body: Center(
        child: Text(
          'Chat $counter',
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
