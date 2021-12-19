import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liquid Swipe Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LiquidSwipeExample(),
    );
  }
}

class LiquidSwipeExample extends StatefulWidget {
  const LiquidSwipeExample({Key? key}) : super(key: key);

  @override
  _LiquidSwipeExampleState createState() => _LiquidSwipeExampleState();
}

class _LiquidSwipeExampleState extends State<LiquidSwipeExample> {
  // Photos from google
  final pages = [
    Container(
        height: double.infinity,
        child: Image.asset(
          "assets/images/dali.jpeg",
          fit: BoxFit.cover,
        )),
    Container(
        height: double.infinity,
        child: Image.asset(
          "assets/images/berlin.jpeg",
          fit: BoxFit.cover,
        )),
    Container(
        height: double.infinity,
        child: Image.asset(
          "assets/images/professor.jpeg",
          fit: BoxFit.cover,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return LiquidSwipe(
            pages: pages,
            fullTransitionValue: 880,
            waveType: WaveType.circularReveal,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            positionSlideIcon: 0.8,
            onPageChangeCallback: null,
            liquidController: LiquidController(),
          );
        },
      ),
    );
  }
}
