part of 'models.dart';

@freezed
class EwentsModel with _$EwentsModel {
  const factory EwentsModel({
    int? nwsId,
    int? evAdminId,
    int? evHallId,
    int? evMinAge,
    int? evDuration,
    String? evTitle,
    String? evDescription,
    String? evImageLink,
    String? evDatetime,
    String? evDirectorId,
    String? evLanguage,
    String? evGenre,
    String? evThirdPartySaleLink,
    bool? evIsThirdPartySale,
  }) = _EwentsModel;

  factory EwentsModel.fromJson(Map<String, dynamic> json) =>
      _$EwentsModelFromJson(json);

  factory EwentsModel.fromDocument(Map<String, dynamic> json, {String? id}) {
    if (id != null) {
      json['id'] = id;
    }
    return EwentsModel.fromJson(json);
  }
}
