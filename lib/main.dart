import 'package:flutter/material.dart';
import 'package:perfil/screen/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2371EE),
        ),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const NavBar(),
      },
    );
  }
}
