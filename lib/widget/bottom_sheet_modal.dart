import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfil/widget/helper/media_query.dart';
import 'package:perfil/widget/menu_item.dart';
import 'package:perfil/widget/my_button.dart';

void bottomSheetModalCamera(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          color: Colors.white,
          height: height(context, 0.3),
          width: width(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height(context, 0.01)),
                child: Container(
                  height: height(context, 0.005),
                  width: width(context, 0.25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width(context, 0.9)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
              const MenuItem(
                sufizIcon: "assets/icons/camera_24px.svg",
                text: "Tirar foto",
                bottom: Radius.circular(16),
                top: Radius.circular(16),
              ),
              SizedBox(
                height: height(context, 0.02),
              ),
              const MenuItem(
                sufizIcon: "assets/icons/add_photo_24px.svg",
                text: "Escolher foto",
                bottom: Radius.circular(16),
                top: Radius.circular(16),
              )
            ],
          ),
        ),
      );
    },
  );
}

void bottomSheetModalExcluir(
  BuildContext context,
) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          color: Colors.white,
          width: width(context, 1),
          height: height(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height(context, 0.01)),
                child: Container(
                  height: height(context, 0.005),
                  width: width(context, 0.25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width(context, 0.9)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
              const Text(
                "Tem certeza que deseja encerrar a jornada do seu melhor amigo?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Outfit",
                ),
              ),
              SizedBox(
                height: height(context, 0.05),
              ),
              const Text(
                "Todas as suas informações e a evolução do seu pet no aplicativo serão apagadas. Essa ação não pode ser desfeita.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3A484D),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: height(context, 0.05),
              ),
              const MyButton(
                colorButton: Color(0xFFF14A29),
                text: Text(
                  "Excluir conta",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: height(context, 0.02),
              ),
              const MyButton(
                colorButton: Colors.white,
                text: Text(
                  "Cancelar",
                  style: TextStyle(color: Color(0xFF2371EE)),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
