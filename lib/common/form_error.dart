import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/size_config.dart';


class FormError extends StatelessWidget {
  const FormError({Key key, @required this.errors, @required this.svgIcon})
      : super(key: key);
  final String svgIcon;
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => buildFormErrorText(errors[index])));
  }

  Row buildFormErrorText(String error) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(svgIcon),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error)
      ],
    );
  }
}
