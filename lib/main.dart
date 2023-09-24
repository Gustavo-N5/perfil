import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/screen/nav_bar.dart';
import 'package:perfil/screen/perfil_pages/bloc/perfil_bloc.dart';
import 'package:perfil/screen/perfil_pages/detail_perfil_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PerfilBloc(),
        )
      ],
      child: MaterialApp(
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
          "/editaPerfil": (context) => const DetailPerfilPage(),
        },
      ),
    );
  }
}
