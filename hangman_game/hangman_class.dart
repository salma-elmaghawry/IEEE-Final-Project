import 'dart:io';
import 'dart:math';

class HangManClass {
  final List<String> wordList = ['salma', 'hi', 'hello'];
  late String secretWord;
  late List<String> guessedLetters;
  int remainingAttempts;

  HangManClass({this.remainingAttempts = 6}) {
    secretWord =
        wordList[Random().nextInt(wordList.length)].trim().toLowerCase();
    guessedLetters = [];
  }

  void displayWord() {
    String display = '';
    for (var letter in secretWord.split('')) {
      if (guessedLetters.contains(letter)) {
        display += '$letter ';
      } else {
        display += '_ ';
      }
    }
    print('\nWord: $display');
  }

  void displayStatus() {
    print('\nGuessed Letters: ${guessedLetters.join(", ")}');
    print('Remaining Attempts: $remainingAttempts');
  }

  bool isWin() {
    for (var letter in secretWord.split('')) {
      if (!guessedLetters.contains(letter)) return false;
    }
    return true;
  }

  bool isGameOver() => remainingAttempts <= 0;

  void guessLetter(String letter) {
    if (guessedLetters.contains(letter)) {
      print("⚠️ You've already guessed that letter.");
      return;
    }

    guessedLetters.add(letter);

    if (!secretWord.contains(letter)) {
      remainingAttempts--;
      print("❌ Wrong guess");
    } else {
      print("✅ Good guess");
    }
  }

  void start() {
    print('🎮 Welcome to Hangman Game!');

    while (!isWin() && !isGameOver()) {
      displayWord();
      displayStatus();
      stdout.write('\nEnter a letter: ');
      String? input = stdin.readLineSync()?.toLowerCase();

      if (input == null ||
          input.length != 1 ||
          !RegExp(r'^[a-z]$').hasMatch(input)) {
        print("Please enter a single valid letter.");
        continue;
      }

      guessLetter(input);
    }

    if (isWin()) {
      print('\n🎉 You won!\nThe word was "$secretWord".');
    } else {
      print('\n💀 You lost!\nThe word was "$secretWord".');
    }
  }
}
