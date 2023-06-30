import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

//Implementing a custom stateful widget requires creating two classes:
// A subclass of StatefulWidget that defines the widget.
// A subclass of State that contains the state for that widget and defines the widget’s build() method. the name of this class ends up with State.
class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // // we can store widgets in variables because widgets are just objects and objects are just regular values in dart.
  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  //   // TODO: implement initState
  // }

  // void switchScreen() {
  //   setState(() {
  //     // anonymous function
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  var activeScreen = 'start_screen';
  void switchScreen() {
    setState(() {
      // anonymous function
      activeScreen = 'questions_screen';
    });
  }

  //setState is a function that is provided by Flutter. to set state you have to pass a function to the setState.
  // in this anonymous function, you should perform any data changing activities.
  @override
  Widget build(context) {
    // Widget screenWidget = activeScreen == 'start_screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions_screen') {
      screenWidget = const QuestionsScreen();
    }
    ;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 56, 0, 81),
                Color.fromARGB(255, 76, 0, 124),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}