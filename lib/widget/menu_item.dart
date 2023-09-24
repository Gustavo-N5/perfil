// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfil/widget/helper/media_query.dart';

class MenuItem extends StatelessWidget {
  final String sufizIcon;
  final String text;
  final Radius bottom;
  final Radius top;
  final Function()? onTap;

  const MenuItem({
    Key? key,
    required this.sufizIcon,
    required this.text,
    required this.bottom,
    required this.top,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context, 0.03)),
        child: Container(
          height: height(context, 0.07),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFFB3BBBF),
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: bottom,
              top: top,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width(context, 0.05)),
                child: SvgPicture.asset(sufizIcon),
              ),
              SizedBox(
                width: width(context, 0.6),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: width(context, 0.1),
              ),
              SvgPicture.asset("assets/icons/chevron_right_24px.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
