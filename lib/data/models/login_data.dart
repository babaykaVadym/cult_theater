part of 'models.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    String? accessToken,
    String? refreshToken,
    String? expiresAt,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
