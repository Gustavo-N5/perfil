import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perfil/screen/perfil/bloc/perfil_bloc.dart';

import 'package:perfil/widget/app_bar.dart';
import 'package:perfil/widget/helper/media_query.dart';
import 'package:perfil/widget/menu_item.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  late final PerfilBloc perfilBloc;
  @override
  void initState() {
    super.initState();
    perfilBloc = BlocProvider.of<PerfilBloc>(context);
    perfilBloc.stream.listen((state) {
      if (state is PerfilStateInitial) {
        const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          BlocBuilder<PerfilBloc, PerfilState>(
            builder: (context, state) {
              if (state is PerfilStateLoaded) {
                return AppBarPerfil(
                  name: state.perfil.user.fullname,
                  email: state.perfil.user.email,
                );
              }
              return const SizedBox.shrink();
            },
          ),
          SizedBox(
            height: height(context, 0.04),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/pets_24px.svg",
            text: "Meus Pets",
            bottom: Radius.circular(0),
            top: Radius.circular(16),
          ),
          MenuItem(
            onTap: () => Navigator.pushNamed(context, "/editaPerfil"),
            sufizIcon: "assets/icons/profile_24px.svg",
            text: "Editar Perfil",
            bottom: const Radius.circular(0),
            top: const Radius.circular(0),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/clicker_24px.svg",
            text: "Ferramentas",
            bottom: Radius.circular(0),
            top: Radius.circular(0),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/premium_24px.svg",
            text: "Gerenciar Assinatura",
            bottom: Radius.circular(0),
            top: Radius.circular(0),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/lock_24px.svg",
            text: "Alterar Senha",
            bottom: Radius.circular(16),
            top: Radius.circular(0),
          ),
          SizedBox(
            height: height(context, 0.04),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/logout_24px.svg",
            text: "Sair",
            bottom: Radius.circular(16),
            top: Radius.circular(16),
          ),
        ],
      ),
    );
  }
}
