import 'package:flutter/foundation.dart';
import 'package:users_app/models/directions.dart';

class AppInfo extends ChangeNotifier {
  Directions? userPickUpLocation;

  void updatePickUpLocationAddress(Directions userPickUpAddress) {
    userPickUpLocation = userPickUpAddress;
    notifyListeners();
  }
}
