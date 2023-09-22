import 'package:flutter/material.dart';
import 'package:perfil/widget/app_bar.dart';
import 'package:perfil/widget/helper/media_query.dart';
import 'package:perfil/widget/menu_item.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const AppBarPerfil(name: "J", email: "j@teste.com"),
          SizedBox(
            height: height(context, 0.04),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/pets_24px.svg",
            text: "Meus Pets",
            bottom: Radius.circular(0),
            top: Radius.circular(16),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/profile_24px.svg",
            text: "Editar Perfil",
            bottom: Radius.circular(0),
            top: Radius.circular(0),
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
            sufizIcon: "assets/icons/profile_24px.svg",
            text: "Editar Perfil",
            bottom: Radius.circular(16),
            top: Radius.circular(0),
          ),
          SizedBox(
            height: height(context, 0.04),
          ),
          const MenuItem(
            sufizIcon: "assets/icons/logout_24px.svg",
            text: "Editar Perfil",
            bottom: Radius.circular(16),
            top: Radius.circular(16),
          ),
        ],
      ),
    );
  }
}
