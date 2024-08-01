import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'want_watch_cubit.freezed.dart';
part 'want_watch_state.dart';

class WantWatchCubit extends Cubit<WantWatchState> {
  WantWatchCubit() : super(const WantWatchState.initial(isLoading: false));

  init() {}
}
