import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  final VoidCallback showInformationPage;
  const LandingPage({super.key, required this.showInformationPage});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
