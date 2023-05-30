import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  
  @override
  State <Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
var activeScreen = 'start-screen';

void switchScreen(){
  setState(() { 
    activeScreen =  'questions-screen';
  }  
);
} 

  Widget build(context){
    var screenWidet = StartScreen(switchScreen);

    return  MaterialApp( 
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 86, 15, 209),
                Color.fromARGB(255, 70, 36, 129),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen =='start-screen' 
          ? StartScreen(switchScreen) 
          : const QuestionsScreen(),
    ),
  ),
  );
  }
}