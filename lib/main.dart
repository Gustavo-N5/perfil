import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/screen/detail_page/bloc/detail_bloc.dart';
import 'package:perfil/screen/detail_page/detail_perfil_page.dart';
import 'package:perfil/screen/nav_bar.dart';
import 'package:perfil/screen/perfil/bloc/perfil_bloc.dart';

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
          create: (context) => PerfilBloc()..add(PerfilEventLoaded()),
        ),
        BlocProvider(
          create: (context) => DetailBloc()..add(DetailEventLoaded()),
        ),
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
