import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// we don't need any changing data so we should use the Stateless widget.
class StartScreen extends StatelessWidget {
  // we also have to add aconstructor function by repeating the class name.
  // key needs to forwarded to the parent widget(StatelessWidget).
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  // in the StatelessWidget we should define the build method that returns a widget.
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 250,
          //   ),
          // ),
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(103, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter The Fun Way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 246, 221, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white, // text color
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
