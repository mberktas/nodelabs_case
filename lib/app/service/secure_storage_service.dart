import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@injectable
class SecureStorageService {
  SecureStorageService(this._storage);

  final FlutterSecureStorage _storage;

  Future<String?> read(String key) async {
    return _storage.read(key: key);
  }

  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  Future<Map<String, String>> readAll() async {
    return _storage.readAll();
  }
}
