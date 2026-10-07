import 'dart:io';

import 'main.dart';

Team scout() {
  while (true) {
    try {
      print('${cyan}Team number:');
      int teamNumber = int.parse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;

      print('Hot dogs eaten:');
      int hotDogsEaten = int.parse(stdin.readLineSync() ?? 'Invalid Input') ??
          0;

      print('Hamburgers eaten:');
      int hamburgersEaten = int.parse(
          stdin.readLineSync() ?? 'Invalid Input') ??
          0;

      print('Notes (dates, times, etc.):$reset');
      String notes = stdin.readLineSync() ?? 'Error';


      Team team1 = Team(teamNumber, hotDogsEaten, hamburgersEaten, notes);
      return team1;
    } catch (e) {
      print('Invaled Input$reset');
    }
  }
}