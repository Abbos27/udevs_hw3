import 'dart:io';


import 'abonent.dart';

void main(List<String> arguments) {
  List<Abonent> abonentsList = [];

  int id = 0;
  while (true) {
    print("Enter 1 to add a new client");
    print("Enter 2 to see a list of Abonents");
    print("Enter 0 to exit ");
    print("-------------------------------------");
    int command = int.parse(stdin.readLineSync()!);
    if (command == 1) {
      print("-------------------------------------");
      print("You have chosen adding a new abonent");
      print("-------------------------------------");
      print("Enter surname");
      String surname = stdin.readLineSync()!;
      print("Enter name");
      String name = stdin.readLineSync()!;
      print("Enter middle name");
      String middleName = stdin.readLineSync()!;
      print("Enter address");
      String address = stdin.readLineSync()!;
      print("Enter credit");
      String credit = stdin.readLineSync()!;
      print("Enter card number");
      int cardNumber = int.parse(stdin.readLineSync()!);
      print("Enter debit");
      int debit = int.parse(stdin.readLineSync()!);
      print("Enter city");
      String city = stdin.readLineSync()!;
      print("Inside calls");
      int insideCalls = int.parse(stdin.readLineSync()!);
      print("Outside calls");
      int outsideCalls = int.parse(stdin.readLineSync()!);
      id++;
      var newAbonent = Abonent(id, surname, name, middleName, address, credit,
          cardNumber, debit, city, insideCalls, outsideCalls);
      abonentsList.add(newAbonent);
    } else if (command == 2) {
      if (abonentsList.isNotEmpty) {
        List<String> aplhabeticSort = [];
        abonentsList.forEach((element) {
          print("-------------------------------------");
          aplhabeticSort
              .add("${element.surname} ${element.name} ${element.middleName}");
        });

        int counter = 1;
        print("Abonentlar ro’yxati alfavit tartibida:");
        print("-------------------------------------");
        aplhabeticSort.forEach((element) {
          print("$counter) $element");
          counter++;
        });
        print("-------------------------------------");
        counter = 1;
        print(
            "Shaharlararo suhbat vaqti shahar bo’yicha suhbat vaqtidan ko’p bo’lgan abonentlar ro’yxati:");
        print("-------------------------------------");
        abonentsList.forEach((element) {
          if (element.outsideCalls > element.insideCalls) {
            print(
                "$counter)${element.surname} ${element.name} ${element.middleName}");
            counter++;
          }
        });
      } else {
        print("List is empty");
      }
    } else if (command == 0) {
      print("Exiting");
      break;
    }
  }
}
