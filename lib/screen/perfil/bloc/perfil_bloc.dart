import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:perfil/data/models/perfil.dart';
import 'package:perfil/data/servicies/perfil_servicie.dart';
import 'package:perfil/data/servicies/perfil_servicie_impl.dart';

part 'perfil_event.dart';
part 'perfil_state.dart';

class PerfilBloc extends Bloc<PerfilEvent, PerfilState> {
  final PerfilServicie servicie = PerfilServicieImpl();
  PerfilBloc() : super(PerfilStateInitial()) {
    on<PerfilEventLoaded>((event, emit) => _loaded(event, emit));
  }

  Future<void> _loaded(
      PerfilEventLoaded event, Emitter<PerfilState> emit) async {
    emit(PerfilStateInitial());
    var perfil = await servicie.getPerfil();
    emit(PerfilStateLoaded(perfil: perfil));
  }
}
