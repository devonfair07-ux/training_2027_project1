import 'dart:io';

import 'main.dart';

void pick() {
  print('${blue}\nChoose team number:');
  try {
    int teamNumber = int.parse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;
    for (Team info in teams) {
      if (info.teamNumber == teamNumber) {
        print('Selected team number: ${info.teamNumber}');
        print('Hot Dogs Eaten: ${info.hotDogsEaten}');
        print('Hamburbers Eaten: ${info.hamburgersEaten}');
        print('Notes: ${info.notes}');
      }else{
        print('No teams found$reset');
      }
    }
  } catch (d) {
    print('\nInvalid Input$reset');
  }
}
