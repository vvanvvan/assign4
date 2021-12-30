import 'dart:math';

class Game {
  int _maxRandom = 0;
  int? _answer;
  int _guessCount = 0;
  static var myList = <int>[];


  Game({int a = 100}) {
    _maxRandom = a;
    var r = Random();
    _answer = r.nextInt(_maxRandom) + 1;
  }

  int get maxRandom {
    return _maxRandom;
  }

  int get guessCount {
    myList.add(_guessCount);
    return _guessCount;
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}