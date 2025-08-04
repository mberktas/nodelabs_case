import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
sealed class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required String id,
    required String loginResponseId,
    required String name,
    required String email,
    required String photoUrl,
    required String token,
  }) = _LoginResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
