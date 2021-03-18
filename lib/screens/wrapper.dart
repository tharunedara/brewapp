import 'package:brew_crew/authentication/authenticate.dart';
import 'package:flutter/material.dart';
import 'home.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Return either home or authenticate
    return Authenticate();
  }
}
