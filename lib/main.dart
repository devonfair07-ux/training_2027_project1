import 'dart:io';

//The read command -> String name = stdin.readLineSync() ?? 'Error';

void runCli(List<String> arguments) {
  Map<int, int> teams = {};
  while (true) {
    print('___Welcome to Hot-Diggity-Dog___');
    print('Scout match: 1');
    print('See statistics: 2');
    print('Exit app: 3');
    String option = stdin.readLineSync() ?? 'Error';
    if (option == '1') {
      teams.addAll(scout());
      print('Thank you for entering this data!');
    } else if (option == '2') {
      print('Choose team number:');
      String teamNumber = stdin.readLineSync() ?? 'Error';
      print('$teamNumber has eaten:');
      if(teams[teamNumber] == null){print('No found data');};
      print(teams[teamNumber]);
    } else {
      break;
    }
  }
}

Map<int, int> scout() {
  Map<int, int> scouting = {};
  print('Team number:');
  String teamNumber = stdin.readLineSync() ?? 'Error';
  int? teamNumberint = .tryParse(teamNumber);
  if (teamNumberint == null) {
    print('Invalied input, try again');
  print('Hot dogs eaten:');
  String hotDogsEaten = stdin.readLineSync() ?? 'Error';
  int? hotDogsEatenint = .tryParse(hotDogsEaten);
  if (hotDogsEatenint == null) {
    print('Invalied input, try again');
  } else {
    scouting[teamNumber] = hotDogsEatenint;
  }
  return scouting;
}
