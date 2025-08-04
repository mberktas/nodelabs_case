part of 'signup_bloc.dart';

@freezed
sealed class SignupState with _$SignupState {
  const factory SignupState.loading() = SignupLoading;

  const factory SignupState.success() = SignupSuccess;

  const factory SignupState.failure(String error) = SignupFailure;
}
