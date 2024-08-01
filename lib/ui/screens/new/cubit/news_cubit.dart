import 'package:bloc/bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_cubit.freezed.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState.initial(isLoading: true));
  final NewsRepository newsRepository = getIt<NewsRepository>();
  init() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final listNew = await newsRepository.getNewsList();

    emit(state.copyWith(
      newList: listNew,
      isLoading: false,
    ));
  }
}
