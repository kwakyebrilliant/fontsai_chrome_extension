import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.inter(
                        height: 1.1,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Provide \n',
                          style: GoogleFonts.inter(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        TextSpan(
                          text: 'Your Details \n',
                          style: GoogleFonts.inter(
                            fontSize: 36.0,
                            fontWeight: FontWeight.w800,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ],
                    ),
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
