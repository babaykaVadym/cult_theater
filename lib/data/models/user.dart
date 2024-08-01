part of 'models.dart';

@freezed
class User with _$User {
  const factory User({
    int? usrId,
    String? usrEmail,
    String? usrPhone,
    String? usrName,
    String? userFotoUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDocument(Map<String, dynamic> json, {String? id}) {
    if (id != null) {
      json['id'] = id;
    }
    return User.fromJson(json);
  }
}
