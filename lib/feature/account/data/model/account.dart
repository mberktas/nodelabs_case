import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
sealed class Account with _$Account {
  const factory Account({
    required String id,
    required String name,
    required String email,
    String? photoUrl,
    required String token,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
