import 'package:fitbit/src/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Fitbit extends StatelessWidget {
  const Fitbit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF192a56),
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
