import 'package:flutter/material.dart';
import 'package:perfil/widget/helper/media_query.dart';

class AppBarPerfil extends StatelessWidget {
  final String name;
  final String email;
  const AppBarPerfil({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: width(context, 1),
      height: height(context, 0.16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height(context, 0.045),
              bottom: height(context, 0.015),
              left: width(context, 0.04),
              right: width(context, 0.02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Image.asset(
                "assets/images/Ellipse 5.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: width(context, 0.01),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                email,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
