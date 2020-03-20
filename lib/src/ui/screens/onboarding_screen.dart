import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<PageViewModel> onboardingPages = <PageViewModel>[
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain someting...',
      image: Center(
          child: Image.asset('assets/images/screen1.png', height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Color(0xFF192a56),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
      ),
    ),
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain someting...',
      image: Center(
          child: Image.asset('assets/images/screen2.png', height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Color(0xFF192a56),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
      ),
    ),
    PageViewModel(
      title: 'Title of first page',
      body:
          'Here you can write the description of the page, to explain someting...',
      image: Center(
          child: Image.asset('assets/images/screen3.png', height: 175.0)),
      decoration: const PageDecoration(
        pageColor: Color(0xFF192a56),
        bodyTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: onboardingPages,
        onDone: () {
          // When done button is press
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showSkipButton: true,
        skip: const Icon(
          Icons.skip_next,
          color: Colors.white,
        ),
        next: const Icon(
          Icons.arrow_right,
          color: Colors.white,
        ),
        done: const Text('Done',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.deepOrange,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
