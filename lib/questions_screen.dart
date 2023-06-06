import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen ({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }

}

class _QuestionsScreen extends State<QuestionsScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion() {
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
    currentQuestionIndex++; //increments the value by 1
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 189, 122, 122),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: answerQuestion);
            })
          ],
        ),
      ),
    );
  }
}
