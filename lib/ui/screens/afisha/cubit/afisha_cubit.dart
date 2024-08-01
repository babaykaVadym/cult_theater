import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/data/repository/ewents.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'afisha_cubit.freezed.dart';
part 'afisha_state.dart';

class AfishaCubit extends Cubit<AfishaState> {
  AfishaCubit() : super(const AfishaState.initial(isLoading: true));

  init(BuildContext context) async {
    debugPrint("[AfishaCubit] init");

    emit(state.copyWith(
      isLoading: true,
    ));
    User? user;
    try {
      final afishaList = await getIt<EwentsRepository>()
          .getEventsList(pageNumber: 1, pageSize: state.itemCount);
      try {
        user = await getIt<AccountRepository>().profile();
      } catch (e) {
        //
      }

      AppHelper.user = user;

      emit(state.copyWith(
        afishaList: afishaList ?? [],
        user: user,
        loadLastPages: (afishaList ?? []).length < state.itemCount,
        isLoading: false,
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

  updateLoad(bool load) {
    emit(state.copyWith(
      isLoading: load,
    ));
  }

  loadNewPage(BuildContext context) async {
    try {
      int page = state.page + 1;

      final afishaList = await getIt<EwentsRepository>()
          .getEventsList(pageNumber: page, pageSize: state.itemCount);

      emit(state.copyWith(
        isLoading: false,
        page: page,
        loadLastPages: (afishaList ?? []).length < state.itemCount,
        afishaList: [...state.afishaList, ...afishaList ?? []],
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

  updateUser(User? user) {
    emit(state.copyWith(
      user: user,
    ));
  }
}
