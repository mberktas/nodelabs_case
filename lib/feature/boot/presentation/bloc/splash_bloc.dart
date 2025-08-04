import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/session/jwt.dart';
import 'package:nodelabs_case/app/session/session_manager.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(this._sessionManager) : super(SplashLoading()) {
    on<SplashEvent>(
      (event, emit) => switch (event) {
        _CheckSession() => _onCheckSession(event, emit),
      },
    );
  }

  final SessionManager _sessionManager;

  Future<void> _onCheckSession(
    _CheckSession event,
    Emitter<SplashState> emit,
  ) async {
    await _sessionManager.loadToken();
    String token = _sessionManager.token ?? '';

    if (token.isEmpty) {
      emit(SplashNoSession());
      return;
    }

    JWT.isTokenExpired(token)
        ? emit(SplashExpiredToken())
        : emit(SplashSuccess());
  }
}
