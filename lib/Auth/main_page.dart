import 'package:flutter/material.dart';
import 'package:fontai_chrome_extension/Auth/auth_page.dart';
import 'package:fontai_chrome_extension/Screens/LandingPage/information_page.dart';
import 'package:fontai_chrome_extension/Screens/LandingPage/landing_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    checkUserStatus();
  }

  Future<void> checkUserStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? fullname = prefs.getString('fullname');
    String? username = prefs.getString('username');
    String? eyeCondition = prefs.getString('eyeCondition');

    if (fullname != null && username != null && eyeCondition != null) {
      // If all user data exists, user is authenticated
      setState(() {
        _isAuthenticated = true;
      });
    } else {
      // If any of the data is missing, user is not authenticated
      setState(() {
        _isAuthenticated = false;
      });
    }
  }

  // This function will be passed to InformationPage as `showLandingPage`
  void showLandingPage() {
    // logic for showing the landing page
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              LandingPage(showInformationPage: showInformationPage)),
    );
  }

  // This function will be passed to LandingPage as `showInformationPage`
  void showInformationPage() {
    // logic for showing the information page
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              InformationPage(showLandingPage: showLandingPage)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isAuthenticated
          ? LandingPage(showInformationPage: showInformationPage)
          : const AuthPage(),
    );
  }
}
