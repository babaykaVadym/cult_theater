part of 'models.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    int? ordId,
    int? ordUserId,
    int? ordPrice,
    String? ordCreatedDate,
    String? ordStatus,
    bool? ordIsPayed,
    bool? ordIsExpired,
    String? ordPaymentLink,
    String? ordPayed,
    String? ordExpirationDate,
    // String? ordPayed,

    @JsonKey(
      name: 'ordEvent',
      fromJson: TicketModel._ordEventFromJson,
    )
    AfishaModel? ordEvent,
    @JsonKey(
      name: 'ordEventTickets',
      fromJson: TicketModel._evTicketFromJson,
      defaultValue: [],
    )
    List<EventTicket>? ordEventTickets,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);

  static List<EventTicket>? _evTicketFromJson(List<dynamic>? pages) {
    if (pages == null) {
      return [];
    }

    final pagesList = pages.map((e) => EventTicket.fromJson(e)).toList();

    return pagesList;
  }

  static AfishaModel? _ordEventFromJson(dynamic pages) {
    if (pages == null) {
      return null;
    }

    final pagesList = AfishaModel.fromJson(pages);

    return pagesList;
  }
}
