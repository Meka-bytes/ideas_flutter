class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //chaining methods
    // of() constructor creates
    //a copy of the original list
    final shuffledList = List.of(answers);
    //shuffle() constructor shuffles
    //the main list ... so it affects the value of the main list
    shuffledList.shuffle();
    return shuffledList;
  }
}
