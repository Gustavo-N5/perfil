import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:perfil/widget/helper/media_query.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context, 0.03)),
              child: const Text(
                "Seja Bem vindo!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SvgPicture.asset("assets/icons/Dog.svg"),
          ],
        ),
      ),
    );
  }
}
