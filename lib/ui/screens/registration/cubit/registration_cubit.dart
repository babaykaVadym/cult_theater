import 'package:bloc/bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/auth.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_cubit.freezed.dart';
part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit()
      : super(const RegistrationState.initial(isLoading: false));

  Future<LoginData?> registration({
    required String usrEmail,
    required BuildContext context,
    required String usrPassword,
    required String usrPasswordConfirm,
    required String telephone,
  }) async {
    try {
      emit(state.copyWith(
        isLoading: true,
      ));
      //  Box sessionStorage = Hive.box('session');

      final result = await getIt<AuthRepository>().registerAuth(
          usrEmail: usrEmail,
          usrPassword: usrPassword,
          usrPhone: telephone,
          usrPasswordConfirm: usrPasswordConfirm);

      emit(state.copyWith(
        isLoading: false,
      ));
      return result;
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
      ));

      AppHelper.showToastD(context,
          text: "Щось пішло не так",
          bgColor: Colors.red,
          textColor: Colors.white);
    }
    return null;
  }
}
