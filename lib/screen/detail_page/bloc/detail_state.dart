// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'detail_bloc.dart';

abstract class DetailState {}

class DetailStateInit extends DetailState {}

class DetailStateLoaded extends DetailState {
  final Perfil perfil;
  DetailStateLoaded({
    required this.perfil,
  });
}

class DetailStateDelete extends DetailState {}

class DetailStateAlterarImage extends DetailState {}

class DetailStateExcluir extends DetailState {}
