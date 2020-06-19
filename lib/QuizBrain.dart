import 'Question.dart';

int _questionNumber = 0;

class QuizBrain {
  List<Question> _questionObject = [
    Question(
        "Cyclones spin in a clockwise direction in the southern hemisphere",
        true),
    Question("Goldfish only have a memory of three seconds.", false),
    Question("The capital of Libya is Benghazi.", false),
    Question("An octopus has five hearts.", false),
    Question(
        "Brazil is the only country in the Americas to have the official language of Portuguese.",
        true),
    Question("The Statue of Liberty was a gift from France.", true),
    Question("Electrons are larger than molecules.", false),
    Question("The Atlantic Ocean is the biggest ocean on Earth.", false),
    Question("The chemical make up food often changes when you cook it.", true),
    Question("Sharks are mammals.", false),
    Question("Atoms are most stable when their outer shells are full.", true),
    Question("Venus is the closest planet to the Sun.", false),
    Question("Conductors have low resistance.", true),
    Question("Water is an example of a chemical element.", false),
    Question("Herbivores eat meat.", false),
    Question("Atomic bombs work by atomic fission.", true),
    Question("The human skeleton is made up of less than 206 bones.", true)
  ];

  bool isFinished() {
    if (_questionNumber >= _questionObject.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (_questionNumber < _questionObject.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionObject[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionObject[_questionNumber].questionAnswer;
  }
}
