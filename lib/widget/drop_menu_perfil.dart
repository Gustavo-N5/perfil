import 'package:flutter/material.dart';
import 'package:perfil/widget/helper/media_query.dart';

class DropMenuPerfil extends StatefulWidget {
  final String label;
  const DropMenuPerfil({super.key, required this.label});

  @override
  State<DropMenuPerfil> createState() => _DropMenuPerfilState();
}

const List<String> list = <String>[
  'Masculino',
  'Feminino',
  'Outros',
  'Prefiro não dizer',
];

class _DropMenuPerfilState extends State<DropMenuPerfil> {
  String? dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width(context, 0.03)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height(context, 0.01),
          ),
          SizedBox(
            width: width(context, 1),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                filled: true,
                hintText: "Selecione uma opção",
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB3BBBF)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB3BBBF)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
              value: dropDownValue,
              onChanged: (value) {
                setState(() {
                  dropDownValue = value;
                });
              },
              items: list
                  .map((list) =>
                      DropdownMenuItem(value: list, child: Text(list)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
