import 'package:flutter/material.dart';
import 'package:fontai_chrome_extension/Theme/theme_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSwitched = false;
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    loadSwitchState();
  }

  void loadSwitchState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = prefs.getBool('isDarkMode') ?? false;
    });
  }

  void saveSwitchState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save the switch state
    prefs.setBool('isDarkMode', isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Font',
                    style: GoogleFonts.roboto(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  TextSpan(
                    text: 'ai',
                    style: GoogleFonts.inter(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFFF6C00A),
                    ),
                  ),
                ],
              ),
            ),
            Transform.scale(
              scale: 0.5,
              child: Switch(
                activeTrackColor: Theme.of(context).colorScheme.inversePrimary,
                value: isDarkMode,
                onChanged: (value) {
                  setState(() {
                    isDarkMode = value;
                    // Save the switch state when it changes
                    saveSwitchState();
                    themeNotifier.toggleTheme();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
