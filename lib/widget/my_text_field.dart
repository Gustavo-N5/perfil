import 'package:flutter/material.dart';
import 'package:perfil/widget/helper/media_query.dart';

class MyTextField extends StatelessWidget {
  final String hintext;
  final TextEditingController controller;
  final String label;
  const MyTextField(
      {super.key,
      required this.label,
      required this.controller,
      required this.hintext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context, 0.03)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height(context, 0.01),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xFFB3BBBF),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Color(0xFFB3BBBF),
                ),
              ),
              hintText: hintext,
            ),
          ),
        ],
      ),
    );
  }
}
