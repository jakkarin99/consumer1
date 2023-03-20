import 'package:flutter/widgets.dart';

class CountingTheNumber with ChangeNotifier {
  int number = 0;
  String message = 'Mobile Programming';

  void increaseNumber(int number) {
    number++;
    notifyListeners();
  }

  void testMessage() {
    message.startsWith('S')
        ? message = 'Hi Student'
        : message = 'First letter is not S';
    notifyListeners();
  }
}
