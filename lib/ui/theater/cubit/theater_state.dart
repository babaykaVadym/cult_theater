part of 'theater_cubit.dart';

@freezed
class TeaterCubitState with _$TeaterCubitState {
  const factory TeaterCubitState.initial({
    required bool isLoading,
    AfishaModel? afishaModel,
    @Default([]) List<EventTicket> ticketsList,
    @Default([]) List<EventTicket> selectedTicketsList,
    @Default([]) List<TiketPricse> ticketsPriceList,
  }) = _Initial;
}
