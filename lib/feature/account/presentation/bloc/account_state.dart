part of 'account_bloc.dart';

@freezed
sealed class AccountState with _$AccountState {
  const factory AccountState.loading() = AccountLoading;
  const factory AccountState.loaded({
    Account? account,
    List<Movie>? favorites,
  }) = AccountLoaded;
  const factory AccountState.error() = AccountError;
}
