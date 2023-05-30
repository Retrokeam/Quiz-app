import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen ( this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override

  Widget build(context){
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
             Image.asset(
              'assets/quiz-logo.png', 
            width: 300,
            color: Color.fromARGB(150, 248, 245, 245),
            ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/quiz-logo.png', 
          //   width: 300,),
          // ),
          const SizedBox(height: 80,),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 207, 179, 179),
              fontSize: 24,
            ),
            ),
            const SizedBox(height: 30,),
            OutlinedButton.icon(onPressed: 
               startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(150, 247, 240, 240),
            ),
            icon: Icon(Icons.arrow_right_alt),
           label: const Text('Start Quiz'),
           ),

        ],
      ),);
  }
}