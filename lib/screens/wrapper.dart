import 'package:flutter/material.dart';
import 'package:brew_app/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:brew_app/models/user.dart';
import 'package:brew_app/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

     //Return home or authenticate
    if(user == null) {
      return Authenticate();
    }else {
      return Home();
    }
  }
}
