import 'package:flutter/material.dart';
import 'package:perfil/widget/drop_menu_perfil.dart';
import 'package:perfil/widget/helper/media_query.dart';
import 'package:perfil/widget/my_button.dart';
import 'package:perfil/widget/my_text_field.dart';

class DetailPerfilPage extends StatefulWidget {
  const DetailPerfilPage({super.key});

  @override
  State<DetailPerfilPage> createState() => _DetailPerfilPageState();
}

class _DetailPerfilPageState extends State<DetailPerfilPage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Editar Perfil',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height(context, 0.02), bottom: height(context, 0.01)),
              child: const Center(
                child: CircleAvatar(
                  minRadius: 40,
                  maxRadius: 50,
                  backgroundImage: AssetImage("assets/images/imagem_jhon.png"),
                ),
              ),
            ),
            const MyButton(
              colorButton: Colors.white,
              text: Text(
                "Alterar foto",
                style: TextStyle(
                  color: Color(0xFF2371EE),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Outfit",
                ),
              ),
            ),
            SizedBox(
              height: height(context, 0.01),
            ),
            MyTextField(
              label: "Nome",
              controller: nomeController,
              hintext: "Nome",
            ),
            SizedBox(
              height: height(context, 0.01),
            ),
            MyTextField(
              label: "Email",
              controller: emailController,
              hintext: "Email",
            ),
            SizedBox(
              height: height(context, 0.01),
            ),
            const DropMenuPerfil(label: "Gênero"),
            SizedBox(
              height: height(context, 0.04),
            ),
            const MyButton(
              colorButton: Color(0xFF2371EE),
              text: Text(
                "Salvar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: height(context, 0.02),
            ),
            const MyButton(
              colorButton: Colors.white,
              text: Text(
                "Excluir Perfil",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Outfit",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
