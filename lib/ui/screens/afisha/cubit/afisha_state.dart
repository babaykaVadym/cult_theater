part of 'afisha_cubit.dart';

@freezed
class AfishaState with _$AfishaState {
  const factory AfishaState.initial({
    required bool isLoading,
    @Default([]) List<AfishaModel> afishaList,
    User? user,
    @Default(false) bool loadLastPages,
    @Default(1) int page,
    @Default(20) int itemCount,
  }) = _Initial;
}
