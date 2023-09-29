part of 'perfil_bloc.dart';

abstract class PerfilEvent extends Equatable {
  const PerfilEvent();

  @override
  List<Object> get props => [];
}

class PerfilEventInit extends PerfilEvent {}

class PerfilEventLoaded extends PerfilEvent {}
