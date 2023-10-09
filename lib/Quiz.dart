import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

class quizz extends StatefulWidget {
  const quizz({super.key});

  @override
  State<quizz> createState() => _quizzState();
}

class _quizzState extends State<quizz> {

  List<question> questionList= getQuestion();
  int score=0;
  int currentQuesInd=0;
  answer? selectAns;
  bool? chAns;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Take Your Quiz",
                style: TextStyle(color: Colors.white,
                fontSize: 32),
              ),

              questionFormat(),
              answerFormat(),
              nextButton(),

            ],
          ),
        ),
      )
    );
  }
  questionFormat(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Question ${currentQuesInd+1}/${questionList.length.toString()}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(21),
          ),
          child: Text(questionList[currentQuesInd].quesText,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400),),

        )
      ],
    );
  }
  answerFormat(){
    return Column(
      children: questionList[currentQuesInd].answerList
          .map((e) => answerButton(e)).toList(),
    );
  }
  Widget answerButton (answer Answer){

    bool selected =Answer== selectAns;
    return Container(
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 9),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: selected? Colors.orange:Colors.white,
          onPrimary: selected? Colors.white:Colors.black
        ),
        child: Text(Answer.ansText,style: const TextStyle(fontSize: 18),),
        onPressed: (){
              setState(() {
                selectAns=Answer;
                chAns=Answer.isCorrect;
              });

            // };
        },
      ),
    );
  }
  nextButton(){
    bool lastQues=false;
    if(currentQuesInd==questionList.length-1){
      lastQues=true;
    }
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 9),
      width: 196,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.black,
            onPrimary: Colors.white
        ),
        child: Text(lastQues?"Summit":"Next",style: TextStyle(fontSize: 18),),
        onPressed: (){
          if(chAns!=null && chAns==true){
            score++;
          }if(lastQues){
            showDialog(context: context, builder: (context) => scoreBox(),);
          }else{
            setState(() {
              selectAns=null;
              chAns=null;
              currentQuesInd++;
            });
          }
        },
      ),
    );
  }
  scoreBox(){

    bool isPassed = false;

    if (score >= questionList.length * 0.5) {
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        "$title | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: const Text("Restart"),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            currentQuesInd = 0;
            score = 0;
            selectAns = null;
            chAns=null;
          });
        },
      ),
    );
  }
}
