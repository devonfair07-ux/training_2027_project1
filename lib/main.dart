import 'dart:io';
import 'package:training_2027_project1/pick_specific_team.dart';
import 'package:training_2027_project1/see_all_teams_scouted.dart';
import 'Scout.dart';

//The read command -> String name = stdin.readLineSync() ?? 'Error';
List<Team> teams = [];

const String reset = '\x1B[0m';
const String red = '\x1B[31m';
const String green = '\x1B[32m';
const String yellow = '\x1B[33m';
const String blue = '\x1B[34m';
const String magenta = '\x1B[35m';
const String cyan = '\x1B[36m';

void runCli(List<String> arguments) {
  while (true) {
    print('\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    print('${blue}\n___Welcome to Hot-Diggity-Dog___$reset');
    print('${yellow}Scout match: 1$reset');
    print('${yellow}See specific statistics: 2$reset');
    print('${yellow}See all scouted teams: 3$reset');
    print('${red}Exit app: 4$reset');
    stdout.write('${green}\nChoose option:$reset');
    String option = stdin.readLineSync() ?? 'Error';

    if (option == '1') {
      teams.add(scout());
      print('\nThank you for entering this data!');
    } else if (option == '2') {
      pick();
    } else if (option == '3'){
      seeAll();
    }else if (option == '4') {
      return;
    }else{
      print('\nInvalid Input, try again');
    }
  }
}


class Team {
  int teamNumber;
  int hotDogsEaten;
  int hamburgersEaten;
  String notes;

  Team(this.teamNumber, this.hotDogsEaten, this.hamburgersEaten, this.notes);
}

