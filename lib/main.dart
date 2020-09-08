import 'package:flutter/material.dart';
import 'package:quiznime/screens/question_screen.dart';
import 'package:provider/provider.dart';
import 'package:quiznime/states/question_and_answer_list.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ChangeNotifierProvider(
      create: (context) => QuestionAndAnswerList(),
      child: MaterialApp(
          theme: ThemeData.dark().copyWith(
              primaryColor: Color(0xFF551A8B),
              scaffoldBackgroundColor: Color(0xFF551A8B)),
          home: QuestionScreen()),
    );
  }
}
