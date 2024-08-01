import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/theater/cubit/theater_cubit.dart';
import 'package:cult_app/ui/theater/widgets/seat_price.dart';
import 'package:cult_app/ui/theater/widgets/sits_bay_widget.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TeaterScreen extends StatefulWidget {
  const TeaterScreen({super.key, required this.afishaModel});

  final AfishaModel afishaModel;

  @override
  State<TeaterScreen> createState() => _TeaterScreenState();
}

class _TeaterScreenState extends State<TeaterScreen> {
  DateTime? date;

  @override
  void initState() {
    if (widget.afishaModel.evDatetime != null) {
      date = DateTimeUtils.stringToDateTimeJS(widget.afishaModel.evDatetime!);
    }

    getIt.resetLazySingleton<TeaterCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text(
          'КВИТКИ',
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
      body: BlocProvider(
        create: (context) => getIt<TeaterCubit>()
          ..init(
            widget.afishaModel.evId ?? 0,
            context,
          ),
        child: BlocBuilder<TeaterCubit, TeaterCubitState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: SizedBox(
                  height: 32,
                  child: CircularProgressIndicator(),
                ),
              );
            }

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.afishaModel.evTitle ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    DateFormat('dd.MM.yyyy | HH:mm')
                        .format(date ?? DateTime.now()),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'СЦЕНА',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  ////
                  const SizedBox(
                    height: 20,
                  ),

                  ...List.generate(10, (i) {
                    List<Widget> myList = [
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 11)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(11) ||
                            (!state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1))) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 11)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 11));
                        },
                        sitsIndex: 11,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 10)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(10) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 10)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 10));
                        },
                        sitsIndex: 10,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 9)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(9) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 9)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 9));
                        },
                        sitsIndex: 9,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 8)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(8) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 8)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 8));
                        },
                        sitsIndex: 8,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 7)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(7) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 7)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 7));
                        },
                        sitsIndex: 7,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 6)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(6) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 6)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 6));
                        },
                        sitsIndex: 6,
                      ),
                      const Spacer(),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 5)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(5) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 5)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 5));
                        },
                        sitsIndex: 5,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 4)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(4) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 4)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 4));
                        },
                        sitsIndex: 4,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 3)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(3) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 3)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 3));
                        },
                        sitsIndex: 3,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 2)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(2) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 2)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 2));
                        },
                        sitsIndex: 2,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SitaBayWidget(
                        isSelect: state.selectedTicketsList.contains(
                            state.ticketsList.firstWhereOrNull((element) =>
                                element.etRowNumber == (1 + i) &&
                                element.etPlaceNumber == 1)),
                        isBaing: !state.ticketsList
                                .where(
                                    (element) => element.etRowNumber == (i + 1))
                                .map((e) => e.etPlaceNumber)
                                .contains(1) ||
                            !state.ticketsList.any(
                                (element) => element.etRowNumber == (i + 1)) ||
                            (state.ticketsList
                                    .firstWhereOrNull((element) =>
                                        element.etRowNumber == (1 + i) &&
                                        element.etPlaceNumber == 1)
                                    ?.etIsPlaceBooked ??
                                false),
                        rowIndex: (1 + i),
                        selectSits: () {
                          getIt<TeaterCubit>().selectItemSeat(state.ticketsList
                              .firstWhereOrNull((element) =>
                                  element.etRowNumber == (1 + i) &&
                                  element.etPlaceNumber == 1));
                        },
                        sitsIndex: 1,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      SizedBox(
                        width: 14,
                        child: Text(
                          "${1 + i} ",
                          style: const TextStyle(
                            color: Color(0xFF5F5F5F),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ),
                    ];

                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      height: 28,
                      width: double.infinity,
                      child: Row(children: [...myList.reversed]),
                    );
                  }),

                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 8,
                  ),

                  const Text(
                    'ПУЛЬТОВА ЗОНА',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  if (state.ticketsPriceList.isNotEmpty &&
                      state.selectedTicketsList.isEmpty)
                    SeatPriceWidget(
                      listPrice: state.ticketsPriceList,
                    ),

                  if (state.selectedTicketsList.isNotEmpty) ...[
                    SizedBox(
                      height: 36,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: state.selectedTicketsList
                              .map((e) =>
                                  item(e.etRowNumber, e.etPlaceNumber, () {
                                    getIt<TeaterCubit>().selectItemSeat(e);
                                  }))
                              .toList()),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    OutlinedButton(
                      onPressed: () async {
                        context.router.navigate(BayTeaterTicketRoute(
                            selectedTicketsList: state.selectedTicketsList,
                            afishaModel: widget.afishaModel));
                      },
                      style: AppStyles.buttonStadiumBlue,
                      child: Text(
                          "Сплатити: ${state.selectedTicketsList.where((element) => element.etPrice != null).map((e) => e.etPrice! ~/ 100).toList().sum} грн"),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ]
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget item(
    int? rowIndex,
    int? seatIndex,
    Function onTap,
  ) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        width: 103,

        height: 34,
        // padding: const EdgeInsets.only(top: 8, left: 20, right: 10, bottom: 8),
        decoration: ShapeDecoration(
          color: const Color(0xFF7987A6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${seatIndex ?? ''}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                        TextSpan(
                          text: ' / ${rowIndex ?? ''} ряд',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0.14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 18,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
