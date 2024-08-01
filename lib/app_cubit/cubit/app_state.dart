part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({
    required bool isLoading,
    @Default([]) List<String> ticketsList,
  }) = _Initial;
}
