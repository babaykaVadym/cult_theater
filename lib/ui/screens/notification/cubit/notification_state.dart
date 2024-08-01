part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial({
    required bool isLoading,
    @Default([]) List<String> ticketsList,
  }) = _Initial;
}
