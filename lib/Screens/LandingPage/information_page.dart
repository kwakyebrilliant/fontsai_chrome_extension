import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final VoidCallback showLandingPage;
  const InformationPage({super.key, required this.showLandingPage});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
