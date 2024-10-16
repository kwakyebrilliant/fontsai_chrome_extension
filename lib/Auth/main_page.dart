import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "FontAI",
              style: TextStyle(
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Icon(
              Icons.toggle_on_outlined,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ],
        ),
      ),
    );
  }
}
