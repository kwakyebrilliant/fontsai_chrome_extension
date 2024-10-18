import 'package:flutter/material.dart';
import 'package:fontai_chrome_extension/Screens/LandingPage/information_page.dart';
import 'package:fontai_chrome_extension/Screens/LandingPage/landing_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially show the landing page
  bool showLandingPage = true;

  void toggleScreens() {
    setState(() {
      showLandingPage = !showLandingPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLandingPage) {
      return LandingPage(
        showInformationPage: toggleScreens,
      );
    } else {
      return InformationPage(
        showLandingPage: toggleScreens,
      );
    }
  }
}
