import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_cards_cubit.freezed.dart';
part 'pay_cards_state.dart';

class PayCardsCubit extends Cubit<PayCardsState> {
  PayCardsCubit() : super(const PayCardsState.initial(isLoading: false));

  init() {}
}
