import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  
  @override
  State <Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
Widget? activeScreen;

@override
  void initState() {
     activeScreen = StartScreen(switchScreen);
    super.initState();
  }
void switchScreen(){
  setState(() { 
    activeScreen = const QuestionsScreen();
  }
     
  );
} 

  Widget build(context){
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
          child: activeScreen,
          ),
    ),
  );
  }
}