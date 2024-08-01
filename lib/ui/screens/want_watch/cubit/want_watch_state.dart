part of 'want_watch_cubit.dart';

@freezed
class WantWatchState with _$WantWatchState {
  const factory WantWatchState.initial({
    required bool isLoading,
    @Default([]) List<String> ticketsList,
  }) = _Initial;
}
