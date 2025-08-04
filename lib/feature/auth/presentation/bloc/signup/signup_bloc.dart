import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/session/session_manager.dart';
import 'package:nodelabs_case/feature/auth/domain/repository/auth_repository.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(this._authRepository, this._sessionManager)
    : super(const SignupLoading()) {
    on<SignupEvent>(
      (event, emit) => switch (event) {
        _SignupRequested() => _onSignupRequested(event, emit),
      },
    );
  }

  final AuthRepository _authRepository;
  final SessionManager _sessionManager;

  Future<void> _onSignupRequested(
    _SignupRequested event,
    Emitter<SignupState> emit,
  ) async {
    emit(const SignupLoading());

    final result = await _authRepository.register(
      email: event.email,
      password: event.password,
      name: event.name,
    );

    result.fold((l) => emit(SignupFailure('Signup failed: ${l.message}')), (r) {
      _sessionManager.setToken(r.token);
      emit(SignupSuccess());
    });
  }
}
