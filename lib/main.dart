import 'dart:io';

//The read command -> String name = stdin.readLineSync() ?? 'Error';

void runCli(List<String> arguments) {
  List<Team> teams = [
    Team(123, 5, 10),
  ];
  while (true) {
    print('\n___Welcome to Hot-Diggity-Dog___');
    print('Scout match: 1');
    print('See statistics: 2');
    print('Exit app: 3');
    stdout.write('\nChoose option:');
    String option = stdin.readLineSync() ?? 'Error';
    if (option == '1') {
      teams.add(scout());
      print('\nThank you for entering this data!');
    } else if (option == '2') {
      print('\nChoose team number:');
      try {
        int teamNumber = int.parse(stdin.readLineSync() ?? 'Invalid Input') ??
            0;
        for (Team info in teams) {
          if (info.teamNumber == teamNumber) {
            print('\nSelected team number: ${info.teamNumber}');
            print('\nHot Dogs Eaten: ${info.hotDogsEaten}');
            print('\nHamburbers Eaten: ${info.hamburgersEaten}');
          }
        }
      }catch(d){
        print('\nInvalid Input');
      }
    } else if (option == '3') {
      return;
    }else{
      print('\nInvalid Input, try again');
    }
  }
}

Team scout() {
  while (true) {
    try {
      print('Team number:');
      int teamNumber = int.parse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;

      print('Hot dogs eaten:');
      int hotDogsEaten = int.parse(stdin.readLineSync() ?? 'Invalid Input') ??
          0;

      print('Hamburgers eaten:');
      int hamburgersEaten = int.parse(
          stdin.readLineSync() ?? 'Invalid Input') ??
          0;


      Team team1 = Team(teamNumber, hotDogsEaten, hamburgersEaten);
      return team1;
    } catch (e) {
      print('Invaled Input');
    }
  }
}

class Team {
  int teamNumber;
  int hotDogsEaten;
  int hamburgersEaten;

  Team(this.teamNumber, this.hotDogsEaten, this.hamburgersEaten);
}
