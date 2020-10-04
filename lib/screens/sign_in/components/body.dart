import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/size_config.dart';

class SignInScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              Text("Welcom Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold)),
              Text(
                "Sign in with your email and password\nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SignInForm()
            ],
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgIcon: "assets/icons/Mail.svg",
                )),
          )
        ],
      ),
    );
  }
}

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    this.svgIcon,
  }) : super(key: key);
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
            getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
        child: SvgPicture.asset(svgIcon,
            height: getProportionateScreenHeight(18)));
  }
}