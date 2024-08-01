part of 'tiket_cubit.dart';

@freezed
class TiketState with _$TiketState {
  const factory TiketState.initial({
    required bool isLoading,
    @Default([]) List<TicketModel> ticketsList,
    @Default([]) List<TicketModel> ticketsNotByList,
    @Default(false) bool loadLastPages,
    @Default(false) bool showAllTicket,
    @Default(1) int page,
    @Default(50) int itemCount,
  }) = _Initial;
}
