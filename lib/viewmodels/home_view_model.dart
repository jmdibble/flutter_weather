import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  TextEditingController textEditingController = TextEditingController();
  List<String> cities = ["London", "Milton Keynes", "Margate", "Canterbury"];

  List<String> matchingCities = [];

  bool _showAutoComplete = false;
  bool get showAutoComplete => _showAutoComplete;
  set showAutoComplete(bool value) {
    _showAutoComplete = value;
    notifyListeners();
  }

  List<String> getMatchingCities() {
    String value = textEditingController.value.text;
    List<String> results = [];
    if (value.isEmpty) {
      return results;
    }

    cities.forEach((city) {
      if (city.toLowerCase().startsWith(value.toLowerCase())) {
        results.add(city);
      }
    });
    return results;
  }

  void checkAutoComplete() {
    print("Working");
    matchingCities = getMatchingCities();
    if (matchingCities.isEmpty) {
      showAutoComplete = false;
    } else {
      showAutoComplete = true;
    }
  }
}
