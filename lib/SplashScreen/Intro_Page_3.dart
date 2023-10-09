import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatefulWidget {
  const introPage3({super.key});

  @override
  State<introPage3> createState() => _introPage3State();
}

class _introPage3State extends State<introPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.teal[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Task 2",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.orange),),
              Container(
                height: 400,
                child: Lottie.asset('lib/assets/animation/quiz.json'),
              ),
              Text("Quiz App",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
            ],
          ),
        )

    );
  }
}
