import 'package:bloc/bloc.dart';

part 'perfil_event.dart';
part 'perfil_state.dart';

class PerfilBloc extends Bloc<PerfilEvent, PerfilState> {
  PerfilBloc() : super(PerfilInit());

  void alterarFoto() {
    emit(PerfilAlterarImage());
  }
}
