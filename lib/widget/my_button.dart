import 'package:flutter/material.dart';
import 'package:perfil/widget/helper/media_query.dart';

class MyButton extends StatelessWidget {
  final Color colorButton;
  final Widget text;
  final void Function()? onTap;
  const MyButton(
      {super.key, required this.colorButton, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context, 0.03)),
        child: Container(
          height: height(context, 0.07),
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(child: text),
        ),
      ),
    );
  }
}
