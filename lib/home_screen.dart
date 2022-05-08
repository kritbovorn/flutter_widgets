import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.53 / 1,
                  child: Image.asset(
                    'assets/header1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.home,
                          ),
                          Icon(
                            Icons.note,
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_alarm_rounded,
                          ),
                          Icon(
                            Icons.add_a_photo_sharp,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SafeArea(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
