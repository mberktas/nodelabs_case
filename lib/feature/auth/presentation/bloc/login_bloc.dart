import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/session/session_manager.dart';
import 'package:nodelabs_case/feature/auth/domain/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepository, this._sessionManager)
    : super(LoginLoading()) {
    on<LoginEvent>(
      (event, emit) => switch (event) {
        _LoginRequested() => _onLoginRequested(event, emit),
      },
    );
  }

  final AuthRepository _authRepository;
  final SessionManager _sessionManager;

  Future<void> _onLoginRequested(
    _LoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    final result = await _authRepository.login(
      email: event.email,
      password: event.password,
    );

    result.fold((l) => emit(LoginError('Login failed: ${l.message}')), (r) {
      _sessionManager.setToken(r.token);
      emit(LoginSuccess());
    });
  }
}
