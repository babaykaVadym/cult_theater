part of 'news_cubit.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial({
    required bool isLoading,
    @Default([]) List<News> newList,
  }) = _Initial;
}
