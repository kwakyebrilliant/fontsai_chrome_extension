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
      body: Stack(
        children: [
          Positioned(
            top: 20.0,
            left: 15.0,
            right: 15.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: widget.showLandingPage,
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
