import 'package:animated_icons/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List listPagesViewModel = [];
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          PageViewModel(
              title: "Welcome",
              body: "This is the first step of the introduction.",
              image: _buildImage('assets/intro 1.png'),
              decoration: getPageDecoration()),
          PageViewModel(
              title: "Discover",
              body: "Explore the features of our app.",
              image: _buildImage('assets/intro 2.jpg'),
              decoration: getPageDecoration()),
          PageViewModel(
              title: "Get Started",
              body: "Let's get started using the app.",
              image: _buildImage('assets/intro 3.JPG'),
              decoration: getPageDecoration()),
        ],
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        onDone: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomeScreen()));
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomeScreen()));
        },
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: getDotDecoration(),
        globalBackgroundColor: Colors.white,
        nextFlex: 0);
  }

  Widget _buildImage(String assetName) {
    return Image.asset(assetName, width: 350);
  }

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Colors.grey,
        activeColor: Colors.blue,
        size: const Size(10.0, 10.0),
        activeSize: const Size(22.0, 10.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
      bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.black54),
      imagePadding: EdgeInsets.all(24.0),
      pageColor: Colors.grey);
}
