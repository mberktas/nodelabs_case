part of 'signup_bloc.dart';

@freezed
sealed class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signupRequested({
    required String email,
    required String password,
    required String name,
  }) = _SignupRequested;
}
