class question{
  final String quesText;
  final List<answer> answerList;

  question(this.quesText, this.answerList);


}
class answer{
  final String ansText;
  final bool isCorrect ;

  answer(this.ansText, this.isCorrect);
}

List<question> getQuestion(){
  List<question> list=[];
  //1
  list.add(question(
    "What does the 'G' in G20 stand for?",
    [
      answer("Great", false),
      answer("Group", true),
      answer("Global", false),
      answer("Government", false),
    ],
  ));
//2
  list.add(question(
    " Which of the following is NOT a member of the G20?",
    [
      answer("Australia", false),
      answer("Argentina", false),
      answer("Norway", true),
      answer("South Africa", false),
    ],
  ));
  //3
  list.add(question(
    "What is the primary focus of the G20?",
    [
      answer("Environmental conservation", false),
      answer("Military alliances", false),
      answer("Economic cooperation", true),
      answer("Cultural exchange", false),
    ],
  ));
  //4
  list.add(question(
    " Which of the following countries was the G20's 2020 presidency?",
    [
      answer("China", false),
      answer("Brazil", false),
      answer("Japan", false),
      answer("Saudi Arabia", true),
    ],
  ));
  // 5
  list.add(question(
    " When was the first G20 meeting held at the leaders' level?",
    [
      answer("1999", false),
      answer("2002", false),
      answer("2005", false),
      answer("2008", true),
    ],
  ));
  //6
  list.add(question(
    " The G20 members account for approximately what"
        " percentage of the global GDP?",
    [
      answer("55%", false),
      answer("65%", false),
      answer("75%", false),
      answer("85%", true),
    ],
  ));
  //7
  list.add(question(
    " Which organization typically provides support for the G20,"
        " including its meetings and summits?",
    [
      answer("United Nations (UN)", false),
      answer("World Trade Organization (WTO)", false),
      answer("International Monetary Fund (IMF)", true),
      answer("World Bank", false),
    ],
  ));
  // 8
  list.add(question(
    "  Which of the following countries is the only"
        " African nation in the G20?",
    [
      answer("Nigeria", false),
      answer("South Africa", true),
      answer("Kenya", false),
      answer("Egypt", false),
    ],
  ));
  // 9
  list.add(question(
    " How often do the G20 leaders' summits occur?",
    [
      answer("Annually", true),
      answer("Biennially", false),
      answer("Quarterly", false),
      answer("Every five years", false),
    ],
  ));
  // 10
  list.add(question(
    " In which city was the first G20 leaders' summit held?",
    [
      answer("Toronto", false),
      answer("London", false),
      answer("Washington, D.C.", true),
      answer("Pittsburgh", false),
    ],
  ));
  return list;
}