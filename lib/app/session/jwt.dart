import 'dart:convert';

class JWT {
  static bool isTokenExpired(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) {
        return true; // geçersiz token
      }

      final payload = parts[1];
      final normalized = base64Url.normalize(payload);
      final payloadMap = json.decode(utf8.decode(base64Url.decode(normalized)));

      if (payloadMap is! Map<String, dynamic>) {
        return true;
      }

      final exp = payloadMap['exp'];
      if (exp is! int) {
        return true;
      }

      final expiryDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      return DateTime.now().isAfter(expiryDate);
    } catch (e) {
      return true; // hata varsa expired gibi davran
    }
  }
}
