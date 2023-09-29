part of 'detail_bloc.dart';

abstract class DetailEvent {}

class AlterarFoto extends DetailEvent {}

class SalvarPerfil extends DetailEvent {}

class ExcluirPerfi extends DetailEvent {}

class DetailEventLoaded extends DetailEvent {}
