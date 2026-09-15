import 'dart:io';

void runCli(List<String> arguments) {
  print('Enter passward...');
  String passward = stdin.readLineSync() ?? '';
  if (passward == 'passward'){
    print('Access granted, Hello Devon');
  }else{
    print('Incorrect passward, restart to try again');
  }
}