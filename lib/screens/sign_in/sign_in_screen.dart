import 'package:flutter/material.dart';
import 'package:shopapp/screens/sign_in/components/body.dart';

class SingInScreen extends StatefulWidget {
  static String routeName="/sign_in";
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : buildAppBar(),
      body: SignInScreenBody(),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
        centerTitle: true,
        title: Text("Sign in"),
      );
  }
}