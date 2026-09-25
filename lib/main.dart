import 'dart:io';

//The read command -> String name = stdin.readLineSync() ?? 'Error';

void runCli(List<String> arguments) {
  List<Team> teams = [];
  while (true) {
    print('___Welcome to Hot-Diggity-Dog___');
    print('Scout match: 1');
    print('See statistics: 2');
    print('Exit app: 3');
    String option = stdin.readLineSync() ?? 'Error';
    if (option == '1') {
      teams.add(scout());
      print('Thank you for entering this data!');
    } else if (option == '2') {
      print('Choose team number:');
      int teamNumber = int.tryParse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;
      print();
    }
    }
  }
}

Team scout() {
  print('Team number:');
  int teamNumber = int.tryParse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;

  print('Hot dogs eaten:');
  int hotDogsEaten = int.tryParse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;

  print('Hamburgers eaten:');
  int hamburgersEaten = int.tryParse(stdin.readLineSync() ?? 'Invalid Input') ?? 0;

  Team team1 = Team(teamNumber, hotDogsEaten, hamburgersEaten);
  return team1;
}

class Team {
  int teamNumber;
  int hotDogsEaten;
  int hamburgersEaten;

  Team(this.teamNumber, this.hotDogsEaten, this.hamburgersEaten);
}
