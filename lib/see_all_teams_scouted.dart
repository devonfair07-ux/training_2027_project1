import 'dart:io';

import 'package:training_2027_project1/main.dart';

void seeAll(){
  print('\nScouted Team numbers:');
  int listLength = 0;
  while(listLength < teams.length){
    print(teams[listLength].teamNumber);
    listLength++;
  }
  print('\n${magenta}See attached notes?');
  print('Press y for notes');
  print('Press any other key to skip');
  stdout.write('\nChoose option:');
  String displayNotes = stdin.readLineSync() ?? 'Error';
  if(displayNotes == 'y'){
    print('\nTeams Scouted + Notes:');
    listLength = 0;
    while(listLength < teams.length){
      print('\n');
      print(teams[listLength].teamNumber);
      print(teams[listLength].notes);
      print(reset);
      listLength++;
    }
  }
}
