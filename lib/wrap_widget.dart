import 'package:flutter/material.dart';
import 'package:flutter_widgets/custom_clip_quad.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> icons = [
      Icons.apple,
      Icons.android,
      Icons.window,
      Icons.facebook,
      Icons.south_america,
      Icons.access_alarm,
      Icons.airline_seat_flat_rounded,
      Icons.add_card_sharp,
      Icons.add_home_work,
    ];
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: screenHeight * 0.12,
        elevation: 0,
        flexibleSpace: ClipPath(
          clipper: CustomClipQuad(),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 4, 76, 84),
              image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-vector/point-wave-noise-texture-abstract-dot-background-technological-cyberspace-background_1217-5775.jpg?size=626&ext=jpg&ga=GA1.2.1530693741.1652870331",
                ),
                fit: BoxFit.cover,
                opacity: 0.1,
              ),
            ),
            child: const Text(
              'Wrap Widget',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // alignment: Alignment.center,
              color: Colors.green,
              child: Wrap(
                spacing: 20,
                // runSpacing: 20,
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.spaceEvenly,
                // crossAxisAlignment: WrapCrossAlignment.center,
                children: icons
                    .asMap()
                    .entries
                    .map((e) => _showIcons(e.value))
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // alignment: Alignment.center,
              width: double.maxFinite,
              color: Colors.grey,
              child: Wrap(
                spacing: 20,
                // runSpacing: 30,
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.spaceEvenly,
                // crossAxisAlignment: WrapCrossAlignment.end,
                direction: Axis.vertical,
                children: icons
                    .asMap()
                    .entries
                    .map((e) => _showIcons(e.value))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showIcons(IconData icon) {
    return Container(
      height: 75,
      width: 75,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(icon),
    );
  }
}
