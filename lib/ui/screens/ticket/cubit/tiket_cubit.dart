import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/order_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../resources/date_time.dart';

part 'tiket_cubit.freezed.dart';
part 'tiket_state.dart';

class TiketCubit extends Cubit<TiketState> {
  TiketCubit() : super(const TiketState.initial(isLoading: true));

  init({BuildContext? context}) async {
    debugPrint("[TiketCubit] init");

    try {
      emit(state.copyWith(
        isLoading: true,
      ));

      final List<TicketModel> tiketList = await getIt<OrderRepository>()
              .getOrderList(page: 1, itemCount: state.itemCount) ??
          [];
      List<TicketModel> ticketsList = [];
      List<TicketModel> ticketsNotByList = [];

      if (state.showAllTicket) {
        ticketsList = tiketList;
        //  ticketsList.shuffle();
      } else {
        for (var element in tiketList) {
          if (element.ordIsExpired == null || element.ordIsExpired == false) {
            ticketsList.add(element);
          } else {
            String? date = element.ordEvent?.evDatetime;

            // if(date != null){
            //   print("ssss  ${ DateTimeUtils.stringToDateTimeJS  (date!).isAfter(DateTime.now())}");
            //
            // }

            ticketsNotByList.add(element);
          }
        }
      }

      emit(state.copyWith(
        isLoading: false,
        loadLastPages: ticketsList.length < state.itemCount,
        ticketsList: ticketsList,
        ticketsNotByList: ticketsNotByList,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
      ));
      if (context != null) {
        AppHelper.showToastD(context,
            text: "Щось пішло не так",
            bgColor: Colors.red,
            textColor: Colors.white);
      }
    }
  }

  showAllTiket(bool isShow) {
    emit(state.copyWith(
      isLoading: true,
      showAllTicket: isShow,
    ));
    debugPrint("[TiketCubit] showAllTiket  ${state.isLoading}");

    List<TicketModel> ticketsList = [];
    List<TicketModel> ticketsNotByList = [];

    if (isShow) {
      ticketsList = [...state.ticketsList, ...state.ticketsNotByList];
    } else {
      for (var element in state.ticketsList) {
        if (element.ordIsExpired == null || element.ordIsExpired == false) {
          ticketsList.add(element);
        } else {
          ticketsNotByList.add(element);
        }
      }
    }

    emit(state.copyWith(
      isLoading: false,
      ticketsList: ticketsList,
      loadLastPages: ticketsList.length < state.itemCount,
      ticketsNotByList: ticketsNotByList,
    ));
  }

  refeshDatta({BuildContext? context}) async {
    debugPrint("[TiketCubit] init");

    try {
      emit(state.copyWith(isLoading: true, ticketsList: []));

      final List<TicketModel> tiketList = await getIt<OrderRepository>()
              .getOrderList(page: 1, itemCount: state.itemCount) ??
          [];

      List<TicketModel> ticketsList = [];
      List<TicketModel> ticketsNotByList = [];
      if (state.showAllTicket) {
        ticketsList = [...tiketList];
      } else {
        for (var element in tiketList) {
          if (element.ordIsExpired == null || element.ordIsExpired == false) {
            ticketsList.add(element);
          } else {
            ticketsNotByList.add(element);
          }
        }
      }

      emit(state.copyWith(
        isLoading: false,
        loadLastPages: ticketsList.length < state.itemCount,
        ticketsList: ticketsList,
        ticketsNotByList: ticketsNotByList,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
      ));
      if (context != null) {
        AppHelper.showToastD(context,
            text: "Щось пішло не так",
            bgColor: Colors.red,
            textColor: Colors.white);
      }
    }
  }

  loadNewPage(BuildContext context) async {
    try {
      int page = state.page + 1;

      final List<TicketModel> tiketList = await getIt<OrderRepository>()
              .getOrderList(page: page, itemCount: state.itemCount) ??
          [];

      List<TicketModel> ticketsList = [];
      List<TicketModel> ticketsNotByList = [];
      if (state.showAllTicket) {
        ticketsList = [
          ...state.ticketsList,
          ...tiketList,
        ];
      } else {
        for (var element in [
          ...state.ticketsList,
          ...tiketList,
        ]) {
          if (element.ordIsExpired == null || element.ordIsExpired == false) {
            ticketsList.add(element);
          } else {
            ticketsNotByList.add(element);
          }
        }
      }

      emit(state.copyWith(
        isLoading: false,
        page: page,
        loadLastPages: ticketsList.length < state.itemCount,
        ticketsList: ticketsList,
        ticketsNotByList: ticketsNotByList,
      ));
    } catch (e) {
      AppHelper.showToastD(context,
          text: "Щось пішло не так",
          bgColor: Colors.red,
          textColor: Colors.white);
    } finally {
      emit(state.copyWith(
        isLoading: false,
      ));
    }
  }

  updateLoad(bool isLoad) {
    debugPrint("[TiketCubit] updateLoad");
    emit(state.copyWith(
      isLoading: isLoad,
    ));
  }
}
