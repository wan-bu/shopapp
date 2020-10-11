import 'package:flutter/material.dart';
import 'package:shopapp/common/custom_siffix_icon.dart';
import 'package:shopapp/common/default_button.dart';
import 'package:shopapp/common/form_error.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/size_config.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(
              "Email", "Enter your email", "assets/icons/Mail.svg"),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(
              "Password", "Enter your password", "assets/icons/Lock.svg"),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors, svgIcon: "assets/icons/Error.svg"),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: <Widget>[
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              Text(
                "Forget password",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
              text: "Sign In",
              press: () => {
                    if (_formKey.currentState.validate())
                      {_formKey.currentState.save()}
                  })
        ],
      ),
    );
  }

  TextFormField buildEmailFormField(String label, String hint, String svgIcon) {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      obscureText: false,
      decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: svgIcon,
          )),
    );
  }

  TextFormField buildPasswordFormField(
      String label, String hint, String svgIcon) {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: svgIcon,
          )),
    );
  }
}
