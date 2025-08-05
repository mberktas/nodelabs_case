import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/session/session_manager.dart';
import 'package:nodelabs_case/feature/account/data/model/account.dart';
import 'package:nodelabs_case/feature/account/domain/repository/account_repository.dart';
import 'package:nodelabs_case/feature/explore/data/model/movie.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(this._accountRepository, this._sessionManager)
    : super(AccountLoading()) {
    on<AccountEvent>(
      (event, emit) => switch (event) {
        _Started() => _onStarted(event, emit),
        _AddPhotoRequested() => _onAddPhotoRequested(event, emit),
        _LogoutPressed() => _onLogoutPressed(event, emit),
      },
    );
  }

  final AccountRepository _accountRepository;
  final SessionManager _sessionManager;

  Future<void> _onStarted(_Started event, Emitter<AccountState> emit) async {
    final Account? account = await _fetchProfileDetails();
    final List<Movie>? favorites = await _fetchFavoriteMovies();

    emit(AccountLoaded(account: account, favorites: favorites));
  }

  Future<void> _onAddPhotoRequested(
    _AddPhotoRequested event,
    Emitter<AccountState> emit,
  ) async {
    final XFile pickedImage = event.image;

    _accountRepository.addProfilePhoto(pickedImage);

    final currentState = state as AccountLoaded;
    emit(
      currentState.copyWith(
        account: currentState.account?.copyWith(photoUrl: pickedImage.path),
      ),
    );
  }

  Future<Account?> _fetchProfileDetails() async {
    final result = await _accountRepository.fetchProfileDetails();

    return result.fold((l) => null, (r) => r);
  }

  Future<List<Movie>?> _fetchFavoriteMovies() async {
    final result = await _accountRepository.fetchFavoriteMovies();

    return result.fold((l) => null, (r) => r);
  }

  Future<void> _onLogoutPressed(
    _LogoutPressed event,
    Emitter<AccountState> emit,
  ) async {
    await _sessionManager.clearSession();
  }
}
