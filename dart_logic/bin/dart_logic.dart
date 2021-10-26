// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:core';

void main(List<String> arguments) {
  // palindrome();
  // leapYear();
  // reverseWord();
  // Fibonacci task = Fibonacci();
  // var angka = [15, 1, 3].reduce((x, y) => x + y);
  // print("4. Nearest Fibonacci");
  // print("[15,1,3] = $angka ");
  // fizzbuzz();
}

void palindrome() {
  print("1. Palindrome");
  print('Masukkan angka atau kata');
  String original = stdin.readLineSync();
  String reverse = original.split('').reversed.join('');
  if (original == reverse) {
    print('Merupakan Palindrome');
  } else {
    print('Bukan Merupakan Palindrome');
  }
}

// ignore: missing_return
String konvertHuruf(String text) {
  if (text == null) {
    return null;
  }
}

void leapYear() {
  int awal;
  int akhir;
  print("2. Leap Year");
  stdout.write("Masukkan tahun a : ");
  int x = int.parse(stdin.readLineSync());
  stdout.write("Masukkan tahun b : ");
  int y = int.parse(stdin.readLineSync());

  if (x < y) {
    awal = x;
    akhir = y;
  } else {
    awal = y;
    akhir = x;
  }

  print("============================");
  for (int a = awal; a < akhir; a++) {
    if ((a % 4 == 0) && (a % 100 != 0) || (a % 400 == 0)) {
      stdout.write("$a ");
    }
  }
}

void reverseWord() {
  print("3. Reverse Word");
  String words = "I am A Great human";
  List splitWord = words.split(' ');

  for (int x = 0; x < splitWord.length; x++) {
    String element = splitWord[x];
    String firstChar = element[0];
    String isFirstCharCapital = element[0].toUpperCase();
    if (firstChar == isFirstCharCapital) {
      element = element.toLowerCase();
      element = element.split('').reversed.join('');
      element = element[0].toUpperCase() + element.substring(1);
    }
    splitWord[x] = element;
  }
  String hasil = splitWord[0];
  for (int x = 1; x < splitWord.length; x++) {
    hasil = hasil + " " + splitWord[x];
  }
  stdout.write("Kalimat: ");
  print(words);
  stdout.write("Hasil: ");
  print(hasil);
}

class Fibonacci {
  int value(int first, int second) {
    if (first < second) {
      return first;
    }
    return second;
  }

  void nearestFibonacci(int angka) {
    int first = 0, second = 1;
    var third = first + second;

    while (third <= angka) {
      first = second;
      second = third;
      third = first + second;
    }
    int min = value(angka - first, angka - second);
    if (min == angka - first) {
      min = first;
    } else {
      min = second;
    }
    if ((third - angka) < (third - min)) {
      min = third;
    }
  }
}

void fizzbuzz() {
  print("5. Fizzbuzz");
  stdout.write("Input bilangan: ");
  var number = int.parse(stdin.readLineSync());
  var save = [];
  for (var x = 1; x <= number; x = x + 1) {
    if (((x % 3) == 0) && ((x % 5) == 0)) {
      save.add("FIZZBUZZ");
    } else if ((x % 3) == 0) {
      save.add("FIZZ");
    } else if ((x % 5) == 0) {
      save.add("BUZZ");
    } else {
      save.add(x);
    }
  }
  print(save);
}
