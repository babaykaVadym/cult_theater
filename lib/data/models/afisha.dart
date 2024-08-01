part of 'models.dart';

@freezed
class AfishaModel with _$AfishaModel {
  const factory AfishaModel({
    int? evId,
    int? evAdminId,
    int? evHallId,
    String? evTitle,
    String? evDescription,
    String? evImageLink,
    String? evDatetime,
    String? evCreatedDatetime,
    String? evEditedDatetime,
    String? evThumbImageLink,
    String? evActorsCustom,
    String? evDirectorCustom,
    @JsonKey(
      name: 'evDirector',
      fromJson: AfishaModel._actorFromJson,
    )
    Actor? evDirector,
    int? evDirectorId,
    int? evMinAge,
    String? evLanguage,
    int? evDuration,
    String? evGenre,
    bool? evIsThirdPartySale,
    String? evThirdPartySaleLink,
    @JsonKey(
      name: 'evActors',
      fromJson: AfishaModel._actorsFromJson,
      defaultValue: [],
    )
    List<Actor>? evActors,
  }) = _AfishaModel;

  factory AfishaModel.fromJson(Map<String, dynamic> json) =>
      _$AfishaModelFromJson(json);

  factory AfishaModel.fromDocument(Map<String, dynamic> json, {String? id}) {
    if (id != null) {
      json['id'] = id;
    }
    return AfishaModel.fromJson(json);
  }

  static List<Actor>? _actorsFromJson(List<dynamic>? pages) {
    if (pages == null) {
      return [];
    }

    final pagesList = pages.map((e) => Actor.fromJson(e)).toList();

    return pagesList;
  }

  static Actor? _actorFromJson(dynamic pages) {
    if (pages == null) {
      return null;
    }

    return Actor.fromJson(pages);
  }
}
