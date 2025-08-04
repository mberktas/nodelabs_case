import 'package:injectable/injectable.dart';
import 'package:nodelabs_case/app/service/secure_storage_service.dart';

@injectable
class SessionStorageService {
  SessionStorageService(this._storage);

  final SecureStorageService _storage;

  final String _tokenKey = 'token';

  Future<String?> getToken() async {
    return _storage.read(_tokenKey);
  }

  Future<void> setToken(String value) async {
    await _storage.write(_tokenKey, value);
  }

  Future<void> deleteToken() async {
    await _storage.delete(_tokenKey);
  }
}
