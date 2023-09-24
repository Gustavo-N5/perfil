part of 'perfil_bloc.dart';

abstract class PerfilEvent {}

class PerfilInitial extends PerfilEvent {}

class AlterarFoto extends PerfilEvent {}

class SalvarPerfil extends PerfilEvent {}

class ExcluirPerfi extends PerfilEvent {}
