import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:perfil/data/models/perfil.dart';
import 'package:perfil/data/servicies/perfil_servicie.dart';

class PerfilServicieImpl implements PerfilServicie {
  @override
  Future<Perfil> getPerfil() async {
    var response = await rootBundle.loadString("perfil.json");
    Perfil perfilResult = Perfil.fromMap(jsonDecode(response));
    return perfilResult;
  }
}
