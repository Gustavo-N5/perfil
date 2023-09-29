import 'package:bloc/bloc.dart';
import 'package:perfil/data/models/perfil.dart';
import 'package:perfil/data/servicies/perfil_servicie.dart';
import 'package:perfil/data/servicies/perfil_servicie_impl.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final PerfilServicie _servicie = PerfilServicieImpl();
  DetailBloc() : super(DetailStateInit()) {
    on<AlterarFoto>((event, emit) => _showModalAlterarFoto());
    on<ExcluirPerfi>((event, emit) => _showModalExcluir());
    on<DetailEventLoaded>((event, emit) => _loaded(event, emit));
  }

  Future<void> _loaded(
      DetailEventLoaded event, Emitter<DetailState> emit) async {
    var perfil = await _servicie.getPerfil();
    emit(DetailStateLoaded(perfil: perfil));
  }

  void _showModalAlterarFoto() {
    emit(DetailStateAlterarImage());
  }

  void _showModalExcluir() {
    emit(DetailStateExcluir());
  }
}
