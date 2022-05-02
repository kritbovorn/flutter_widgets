import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  final double _itemHeight = 260;
  final double _scaleFraction = 0.8;

  double _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page!;
      });
      debugPrint('Current Page Value is: ' + _currentPageValue.toString());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: _itemHeight,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 7,
              itemBuilder: (context, index) => _carouselSlider(index),
            ),
          ),
          DotsIndicator(
            dotsCount: 7,
            position: _currentPageValue,
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(22.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _carouselSlider(index) {
    Matrix4 matrix4 = Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var scale = 1 - ((_currentPageValue - index) * (1 - _scaleFraction));
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var scale = _scaleFraction +
          ((_currentPageValue - index + 1) * (1 - _scaleFraction));
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    } else {
      var scale = _scaleFraction;
      var position = _itemHeight * (1 - scale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, position, 0);
    }
    return Transform(
      transform: matrix4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage(
              'assets/helmet.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
