// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'perfil_bloc.dart';

abstract class PerfilState extends Equatable {
  const PerfilState();

  @override
  List<Object> get props => [];
}

class PerfilStateInitial extends PerfilState {}

class PerfilStateLoaded extends PerfilState {
  final Perfil perfil;
  const PerfilStateLoaded({
    required this.perfil,
  });
}
