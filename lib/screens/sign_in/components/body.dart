import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/common/signin_form.dart';
import 'package:shopapp/common/social-media-card.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text("Welcom Back",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(20),
                        fontWeight: FontWeight.bold)),
                Text(
                  "Sign in with your email and password\nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocialMediaCard(
                      svgIcon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialMediaCard(
                      svgIcon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialMediaCard(
                      svgIcon: "assets/icons/twitter.svg",
                      press: () {},
                    )
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(16))),
                    Text("Sign Up",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: getProportionateScreenWidth(16)))
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
