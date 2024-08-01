part of 'models.dart';

@freezed
class News with _$News {
  const factory News({
    int? nwsId,
    int? nwsAdminId,
    String? nwsTitle,
    String? nwsThumbImageLink,
    String? nwsImageLink,
    String? nwsDescription,
    String? nwsText,
    String? nwsCreatedDate,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  factory News.fromDocument(Map<String, dynamic> json, {String? id}) {
    if (id != null) {
      json['id'] = id;
    }
    return News.fromJson(json);
  }
}
