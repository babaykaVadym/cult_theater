import 'package:bloc/bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/actor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trypa_cubit.freezed.dart';
part 'trypa_state.dart';

class TrypaCubit extends Cubit<TrypaState> {
  TrypaCubit() : super(const TrypaState.initial(isLoading: true));
  final ActorRepository newsRepository = getIt<ActorRepository>();
  init() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final listActors = await newsRepository.getActorList();

    emit(state.copyWith(
      actorsList: listActors,
      isLoading: false,
    ));
  }
}
