import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_cubit.freezed.dart';
part 'order_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit()
      : super(const NotificationState.initial(isLoading: false));

  init() {}
}
