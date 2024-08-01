import 'package:auto_route/auto_route.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/ui/screens/user_information/cubit/user_information_cubit.dart';
import 'package:cult_app/ui/screens/user_information/widgets/botom_email.dart';
import 'package:cult_app/ui/screens/user_information/widgets/name_sheet.dart';
import 'package:cult_app/ui/screens/user_information/widgets/new_password.dart';
import 'package:cult_app/ui/screens/user_information/widgets/phone_sheet%20copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../router/router.gr.dart';

@RoutePage()
class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return BlocProvider(
      create: (context) => getIt<UserInformationCubit>()
        ..init(
          context,
        ),
      child: BlocBuilder<UserInformationCubit, UserInformationState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              title: Text(
                'Твоя інформація'.toUpperCase(),
              ),
              centerTitle: true,
              leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ),
            body: Column(
              children: [
                item('EMAIL', state.user?.usrEmail ?? 'Змінити', () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: EmailSheetUser(
                            mailValue: state.user?.usrEmail ?? "",
                            onSave: (text) async {
                              try {
                                final result = await context
                                    .read<UserInformationCubit>()
                                    .upddateValue(context, email: text);
                                context.router
                                    .replace(LoginRoute(canGoBack: false));
                              } catch (e) {
                                //
                              }

                              // if (result) {
                              //   context.router.replace(const LoginRoute());
                              // }
                            },
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                }),
                // item('Телефон', state.user?.email ?? 'Змінити', () {}),
                item('Пароль', 'Змінити', () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: NewPasswordSheetUser(
                            onSave: () async {},
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                }),
                item('Ім’я', state.user?.usrName ?? 'Змінити', () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: NameSheetUser(
                            mailValue: state.user?.usrName ?? "",
                            onSave: (text) async {
                              await context
                                  .read<UserInformationCubit>()
                                  .upddateValue(context, name: text);
                            },
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                }),
                item('Телефон', state.user?.usrPhone ?? 'Змінити', () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: PhoneSheetUser(
                            mailValue:
                                state.user?.usrPhone?.replaceAll("+38", '') ??
                                    "",
                            onSave: (text) async {
                              await context
                                  .read<UserInformationCubit>()
                                  .upddateValue(context, usrPhone: "+38$text");
                            },
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                })
              ],
            ),
          );
        },
      ),
    );
  }

  item(String label, String value, Function onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          label.toUpperCase(),
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () => onTap(),
          child: Text(
            value,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Divider(),
      ],
    );
  }
}
