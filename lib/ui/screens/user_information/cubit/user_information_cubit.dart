import 'package:bloc/bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_cubit.freezed.dart';
part 'user_information_state.dart';

class UserInformationCubit extends Cubit<UserInformationState> {
  UserInformationCubit()
      : super(const UserInformationState.initial(isLoading: true));
  final AccountRepository accountRepository = getIt<AccountRepository>();
  init(
    BuildContext context,
  ) async {
    emit(state.copyWith(
      isLoading: true,
    ));

    try {
      final userData = await accountRepository.profile();

      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
        isLoading: false,
        user: userData,
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

  Future<bool> upddateValue(
    BuildContext context, {
    String? email,
    String? name,
    String? usrPhone,
  }) async {
    debugPrint("[UserInformationCubit]  saveEmail");
    emit(state.copyWith(
      isLoading: true,
    ));

    try {
      await accountRepository.updateProfile(
        usrEmail: email ?? state.user?.usrEmail ?? '',
        usrId: state.user!.usrId!,
        usrName: name ?? state.user?.usrName ?? '',
        usrPhone: usrPhone ?? state.user?.usrPhone ?? '',
      );

      User user = User(
        usrId: state.user!.usrId!,
        usrEmail: email ?? state.user?.usrEmail ?? '',
        usrName: name ?? state.user?.usrName ?? '',
        usrPhone: usrPhone ?? state.user?.usrPhone ?? '',
      );

      await Future.delayed(const Duration(seconds: 1));
      AppHelper.user = user;
      emit(state.copyWith(
        isLoading: false,
        user: user,
      ));

      return true;
    } catch (e) {
      debugPrint("[UserInformationCubit]  saveEmail !!!! Error $e");

      AppHelper.showToastD(context,
          text: "Щось пішло не так",
          bgColor: Colors.red,
          textColor: Colors.white);
      emit(state.copyWith(
        isLoading: false,
      ));
      return false;
    }
  }
}
