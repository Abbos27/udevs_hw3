import 'dart:io';

import 'client.dart';
import 'driver.dart';

List<Driver> drivers = [];
List<Client> clients = [];

void main(List<String> arguments) {
  bool temp = true;
  while (temp) {
    print("Enter 1 to sign in");
    print("Enter 2 to Sign up");
    print("Enter 3 to see All orders");
    print("Enter 4 to see All drivers");
    print("Enter 5 to Quit");
    int n = int.parse(stdin.readLineSync()!);

    if (n == 1) {
      openSignInPage();
    } else if (n == 2) {
      openSignUpPage();
    } else if (n == 3) {
      for (int i = 0; i < clients.length; i++) {
        var client = clients[i];
        print("Order num: [$i]");
        print("Passenger: [${client.fullName}]");
        print("From: [${client.location}]");
        print("To: [${client.destination}]");
        print("----------");
      }
    } else if (n == 4) {
      for (int i = 0; i < drivers.length; i++) {
        var driver = drivers[i];
        print("#$i");
        print("Driver: [${driver.fullName}]");
        print("Experience: [${driver.experience}]");
        print("Rating: [${driver.rating}*]");
        print("----------");
      }
    } else if (n == 5) {
      print("Exiting");
    }
  }
}

void openSignInPage() {}

void openSignUpPage() {
  print("---Registration page---");

  stdout.write("Full name: ");
  String fullName = stdin.readLineSync()!;
  stdout.write("Phone number: ");
  String phoneNum = stdin.readLineSync()!;
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);
  print("Sign in as -> 1 - Passenger | 2 - Driver { 0 - to exit }");

  bool temp = true;
  while (temp) {
    int n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 0:
        {
          print("Exited!");
          temp = false;
          break;
        }
      case 1:
        {
          createNewPassenger(fullName, phoneNum, age);
          temp = false;
          break;
        }
      case 2:
        {
          createNewDriver(fullName, phoneNum, age);
          temp = false;
          break;
        }
      default:
        print("1 - Passenger | 2 - Driver { 0 - to exit }");
    }
  }
}

void createNewDriver(String fullName, String phoneNum, int age) {
  stdout.write("Enter your experience: ");
  int experience = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your rating: ");
  int rating = int.parse(stdin.readLineSync()!);
  stdout.write("Are you free and ready to start a trip? <Yes/No>");
  bool isFree = false;
  bool b = true;
  while (b) {
    String n = stdin.readLineSync()!.toLowerCase();
    switch (n) {
      case "yes":
        {
          isFree = true;
          b = false;
          break;
        }
      case "no":
        {
          isFree = false;
          b = false;
          break;
        }
      default:
        print("<Yes/No>");
    }
  }

  var driver = Driver();
  driver.fullName = fullName;
  driver.phoneNumber = phoneNum;
  driver.age = age;
  driver.rating = rating;
  driver.experience = experience;
  driver.isFree = isFree;

  drivers.add(driver);
}

void createNewPassenger(String fullName, String phoneNum, int age) {
  stdout.write("Enter location: ");
  String location = stdin.readLineSync()!;
  stdout.write("Enter destination: ");
  String destination = stdin.readLineSync()!;
  print("New order has been created!");

  var client = Client();
  client.fullName = fullName;
  client.phoneNumber = phoneNum;
  client.age = age;
  client.location = location;
  client.destination = destination;

  clients.add(client);
}
