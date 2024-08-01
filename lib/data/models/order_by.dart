part of 'models.dart';

@freezed
class OrderByModel with _$OrderByModel {
  const factory OrderByModel({
    int? ordId,
    int? ordPrice,
    int? ordUserId,
    bool? ordIsExpired,
    String? ordExpirationDate,
    String? ordPaymentLink,
    String? enterTokenExpirationDate,
    String? enterToken,
    String? ordPayLink,
    List<int>? ticketIds,
  }) = _OrderByModel;

  factory OrderByModel.fromJson(Map<String, dynamic> json) =>
      _$OrderByModelFromJson(json);
}
