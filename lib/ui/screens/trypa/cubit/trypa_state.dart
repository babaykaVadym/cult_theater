part of 'trypa_cubit.dart';

@freezed
class TrypaState with _$TrypaState {
  const factory TrypaState.initial({
    required bool isLoading,
    @Default([]) List<Actor> actorsList,
  }) = _Initial;
}
