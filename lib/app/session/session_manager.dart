import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/service/session_storage_service.dart';

@singleton
@injectable
class SessionManager {
  String? _token;
  final SessionStorageService _storage;

  SessionManager(this._storage);

  Future<void> loadToken() async {
    _token = await _storage.getToken();
  }

  String? get token => _token;

  Future<void> setToken(String newToken) async {
    _token = newToken;
    await _storage.setToken(newToken);
  }

  Future<void> clearSession() async {
    _token = null;
    await _storage.deleteToken();
  }
}
