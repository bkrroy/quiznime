import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiznime/states/questions_container.dart';
import 'package:quiznime/states/options_state.dart';
import 'package:quiznime/constants/constant.dart';
import 'package:quiznime/states/question_and_answer_list.dart';
import 'package:quiznime/screens/dialog_box_screen.dart';

class QuestionScreen extends StatefulWidget {

void changeScreen(){
    if(QuestionAndAnswerList().isQuizEnd() == false){

    }

  }
  

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          QuestionsContainer(),
          SizedBox(height: 90.0,),
          Options(),
          SizedBox(height: 80.0,),
          CorrectOrIncorrect(),
        ],
      )
      );
  }
}

class CorrectOrIncorrect extends StatefulWidget {
  

  @override
  _CorrectOrIncorrectState createState() => _CorrectOrIncorrectState();
}

class _CorrectOrIncorrectState extends State<CorrectOrIncorrect> {

  @override
  Widget build(BuildContext context) {
    return Consumer<QuestionAndAnswerList>(
      builder: (context, questionAnswerList, chile){
        return Container(
      height: 70.0,
      color: kForegroundColour,
      child:ListView( children: [Row(children: questionAnswerList.icon,)], 
      scrollDirection: Axis.horizontal,) 
    );
      },
    );
  }
}



// Column(
//         children: [
//           QuestionsContainer(),
//           SizedBox(height: 90.0,),
//           Options(),
//           SizedBox(height: 80.0,),
//         ],
//       ),