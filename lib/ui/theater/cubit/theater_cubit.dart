import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/event_tikets.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theater_cubit.freezed.dart';
part 'theater_state.dart';

class TeaterCubit extends Cubit<TeaterCubitState> {
  final AfishaModel? afishaModel;

  TeaterCubit({this.afishaModel})
      : super(const TeaterCubitState.initial(isLoading: false));

  init(
    int id,
    BuildContext context,
  ) async {
    debugPrint("TeaterCubit init");
    emit(state.copyWith(isLoading: true, selectedTicketsList: []));

    try {
      final ticketSits =
          await getIt<EwentTicketsRepository>().getEventTicketById(newsId: id);

      List<TiketPricse> bus = [];
      if (ticketSits?.isNotEmpty == true) {
        final list =
            ticketSits!.where((element) => element.etRowNumber != null);

        final List<int> indexROws = list.map((e) => e.etRowNumber!).toList();

        final set = {...indexROws};

        for (var rowId in set) {
          final elem =
              list.firstWhere((element) => element.etRowNumber == rowId);

          if (bus.firstWhereOrNull((e) => e.price == elem.etPrice) == null) {
            bus.add(TiketPricse(indexRow: rowId, price: elem.etPrice ?? 0));
          }
        }
      }

      emit(
          state.copyWith(ticketsList: ticketSits ?? [], ticketsPriceList: bus));
    } on Exception catch (e) {
      debugPrint('!!!!ERROR getGmailAuth $e');
      AppHelper.showToastD(context,
          text: "Щось пішло не так!",
          e: e,
          bgColor: Colors.red,
          textColor: Colors.white);
    } finally {
      emit(state.copyWith(
        isLoading: false,
      ));
    }
  }

  clearSeats() {
    emit(state.copyWith(selectedTicketsList: []));
  }

  changrLoad(bool load) {
    emit(state.copyWith(
      isLoading: load,
    ));
  }

  selectItemSeat(EventTicket? ticket) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    List<EventTicket> selectedTicketsList = [...state.selectedTicketsList];

    if (ticket != null) {
      if (selectedTicketsList.contains(ticket)) {
        selectedTicketsList.remove(ticket);
      } else {
        selectedTicketsList.add(ticket);
      }
    }

    emit(state.copyWith(
      isLoading: false,
      selectedTicketsList: selectedTicketsList,
    ));
  }
}

class TiketPricse {
  final int indexRow;
  final int price;

  TiketPricse({required this.indexRow, required this.price});
}
