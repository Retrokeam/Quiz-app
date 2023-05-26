import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(
     MaterialApp( 
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
          child: const StartScreen(),
          ),
    ),
  ),
);
}

