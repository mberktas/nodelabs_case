part of 'splash_bloc.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState.loading() = SplashLoading;
  const factory SplashState.success() = SplashSuccess;
  const factory SplashState.error(String message) = SplashError;
  const factory SplashState.noSession() = SplashNoSession;
  const factory SplashState.expiredToken() = SplashExpiredToken;
}
