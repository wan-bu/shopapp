
import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        onPressed:press,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(18)),
        ),
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
