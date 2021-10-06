import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {

  bool _isLoggedIn = false;
  bool get authenticated => _isLoggedIn;
}
