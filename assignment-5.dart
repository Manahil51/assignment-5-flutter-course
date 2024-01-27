import 'dart:io';

void lenghtConversion() {
  print('1. Meter to Kilometers');
  print('2. kilometer to Meters');
  print('3. feet to inches');
  print('4. inches to feet');
  print('5. centimeter to meter');
  print('6. Meter to centimeter');

  int choice = int.parse(stdin.readLineSync()!);
  double result;
  switch (choice) {
    case 1:
      double meter = double.parse(stdin.readLineSync()!);
      result = meter / 1000;
      print('$meter meters is equal to $result kilometers');
      break;
    case 2:
      double kilometers = double.parse(stdin.readLineSync()!);
      result = kilometers * 1000;
      print('$kilometers kilometers is equal to $result meters');
      break;
    case 3:
      double feet = double.parse(stdin.readLineSync()!);
      result = feet / 12;
      print('$feet feet is equal to $result inches');
      break;
    case 4:
      double inches = double.parse(stdin.readLineSync()!);
      result = inches * 12;
      print('$inches inches is equal to $result feet');
      break;
    case 5:
      double centimeter = double.parse(stdin.readLineSync()!);
      result = centimeter * 100;
      print('$centimeter centimeters is equal to $result meter');
      break;
    case 6:
      double meters = double.parse(stdin.readLineSync()!);
      result = meters / 100;
      print('$meters meters is equal to $result centimeters');
      break;
  }
}

void tempertureConversion() {
  print('1: fahrenheit to celsius');
  print('2:celsius to fahrenheit');
  int choice = int.parse(stdin.readLineSync()!);
  double result;

  switch (choice) {
    case 1:
      double fahrenheit = double.parse(stdin.readLineSync()!);
      result = (fahrenheit - 32) * 5 / 9;
      print("$fahrenheit Fahrenheit is equal to $result Celsius");
      break;
    case 2:
      double celsius = double.parse(stdin.readLineSync()!);
      result = (celsius * 9 / 5) + 32;
      print("$celsius Celsius is equal to $result Fahrenheit");
      break;
  }
}

void timeConversion() {
  print("1: Second to minutes");
  print("2: minutes to second");
  print("3: minutes to hours");
  print("4: Seconds to hours");
  print("5: milliseconds to minutes");
  print("6: millisecond to hours");

  int choice = int.parse(stdin.readLineSync()!);
  double result;
  switch (choice) {
    case 1:
      double seconds = double.parse(stdin.readLineSync()!);
      result = seconds / 60;
      print("$seconds seconds is equal to $result minutes");
      break;
    case 2:
      double minutes = double.parse(stdin.readLineSync()!);
      result = minutes * 60;
      print("$minutes minutes is equal to $result seconds");
      break;
    case 3:
      double minutes = double.parse(stdin.readLineSync()!);
      result = minutes / 60;
      print("$minutes minutes is equal to $result hours");
      break;
    case 4:
      double seconds = double.parse(stdin.readLineSync()!);
      result = seconds / 3600;
      print("$seconds seconds is equal to $result hours");
      break;
    case 5:
      double milliseconds = double.parse(stdin.readLineSync()!);
      result = milliseconds / 6000;
      print("$milliseconds milliseconds is equal to $result minutes");
      break;
    case 6:
      double millisecond = double.parse(stdin.readLineSync()!);
      result = millisecond * 360000;
      print("$millisecond seconds is equal to $result hours");
      break;
  }
}

void main() {
  while (true) {
    print("Select an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Time Conversion");

    int userChoice = int.parse(stdin.readLineSync()!);

    if (userChoice == 1) {
      lenghtConversion();
    } else if (userChoice == 2) {
      tempertureConversion();
    } else if (userChoice == 3) {
      timeConversion();
    }

    stdout.write("Do you want to continue? (1. Yes / 2. No): ");
    String continueChoice = stdin.readLineSync()!;
    if (continueChoice != '1') {
      break;
    }
  }
}
