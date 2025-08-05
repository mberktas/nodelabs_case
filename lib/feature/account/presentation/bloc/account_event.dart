part of 'account_bloc.dart';

@freezed
sealed class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;
  const factory AccountEvent.addPhotoRequested({required XFile image}) =
      _AddPhotoRequested;

  const factory AccountEvent.logoutPressed() = _LogoutPressed;
}
