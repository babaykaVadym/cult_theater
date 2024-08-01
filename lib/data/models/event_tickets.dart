part of 'models.dart';

@freezed
class EventTicket with _$EventTicket {
  const factory EventTicket({
    int? etId,
    String? etEventName,
    String? etEventDate,
    String? etHallName,
    String? etHash,
    bool? etIsPlaceBooked,
    bool? etIsUsed,
    int? etRowNumber,
    int? etPlaceNumber,
    int? etPrice,
  }) = _EventTicket;

  factory EventTicket.fromJson(Map<String, dynamic> json) =>
      _$EventTicketFromJson(json);
}
