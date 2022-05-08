import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Modal Sheet'),
          onPressed: () {
            showModalBottomSheet(
                barrierColor: Colors.black.withOpacity(0.2),
                context: context,
                builder: (_) => SizedBox(
                      height: 380,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Ok'),
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    ));
          },
        ),
      ),
    );
  }
}
