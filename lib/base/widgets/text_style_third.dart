import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;

  const TextStyleThird({super.key, required this.text, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == true
          ? AppStyles.headLineStyle3.copyWith(color: Colors.white)
          : AppStyles.headLineStyle3,
    );
  }
}
