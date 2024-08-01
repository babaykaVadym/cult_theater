part of 'pay_cards_cubit.dart';

@freezed
class PayCardsState with _$PayCardsState {
  const factory PayCardsState.initial({
    required bool isLoading,
    @Default([]) List<String> ticketsList,
  }) = _Initial;
}
