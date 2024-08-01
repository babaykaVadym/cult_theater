import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/order_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/drawer/drawer_mebu.dart';
import 'package:cult_app/ui/screens/ticket/cubit/tiket_cubit.dart';
import 'package:cult_app/ui/theater/by_ticket_teater.dart';
import 'package:intl/intl.dart';

import '../../../resources/styles.dart';

@RoutePage()
class TiketScreen extends StatefulWidget {
  const TiketScreen({
    super.key,
  });

  @override
  State<TiketScreen> createState() => _TiketScreenState();
}

class _TiketScreenState extends State<TiketScreen> with ScreenUtils {
  late CarouselController buttonCarouselController;
  GlobalKey<ScaffoldState> keyScaff = GlobalKey();

  @override
  void initState() {
    debugPrint("TiketScreen initState");
    getIt.resetLazySingleton<TiketCubit>();
    buttonCarouselController = CarouselController();

    // getIt<TiketCubit>().init(context: context);
    super.initState();
  }

  int length = 10;
  @override
  Widget build(BuildContext context) {
    AppHelper.keyTiket = keyScaff;
    return PopScope(
      canPop: false,
      onPopInvoked: (v) async {},
      child: Scaffold(
        key: keyScaff,
        backgroundColor: Colors.white,
        drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: DrawerWidget(
              user: AppHelper.user,
            ),
          ),
        ),
        // appBar: AppBar(
        //   leading: GestureDetector(
        //       onTap: () {
        //         key.currentState!.openDrawer();
        //       },
        //       child: const Icon(Icons.menu)),
        appBar: AppBar(
            title: const Text(
              'МОЇ КВИТКИ',
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
              ),
              onPressed: () {
                keyScaff.currentState!.openDrawer();
              },
            )),
        body: BlocProvider(
          create: (context) => getIt<TiketCubit>()
            ..init(
              context: context,
            ),
          child: BlocBuilder<TiketCubit, TiketState>(
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

              if (state.ticketsList.isEmpty) {
                return emptyState();
              }

              return listTiCket(state);
            },
          ),
        ),
      ),
    );
  }

  listTiCket(TiketState state) {
    return Stack(
      children: [
        if (state.ticketsNotByList.isNotEmpty || state.showAllTicket)
          Positioned(
            bottom: 16,
            right: 8,
            left: 8,
            height: 38,
            child: GestureDetector(
              onTap: () {
                getIt<TiketCubit>().showAllTiket(!state.showAllTicket);
              },
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //  const Spacer(),
                    SizedBox(
                      height: 38,
                      width: 50,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: state.showAllTicket,
                          activeColor: Colors.white,
                          activeTrackColor: Constant.blue,
                          onChanged: (bool value) {
                            getIt<TiketCubit>()
                                .showAllTiket(!state.showAllTicket);
                          },
                        ),
                      ),
                    ),
                    const Text(
                      "Неуспішні замовлення",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    //  const Spacer()
                  ],
                ),
              ),
            ),
          ),
        // if (state.ticketsNotByList.isNotEmpty)
        // Positioned(
        //   bottom: 64,
        //   left: 0,
        //   right: 0,
        //   child: Container(
        //     color: Constant.blue,
        //     height: 1,
        //     width: double.infinity,
        //   ),
        // ),
        Positioned(
          top: 12,
          left: 0,
          right: 0,
          bottom: 66,
          child: CarouselSlider.builder(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,

                enableInfiniteScroll: false,
                enlargeCenterPage: true,

                onPageChanged: (index, reason) async {
                  if (!state.loadLastPages &&
                      index == state.ticketsList.length - 1) {
                    handleProgress(true, context);

                    getIt<TiketCubit>().loadNewPage(
                      context,
                    );
                    handleProgress(false, context);
                  }
                },
                viewportFraction: 0.76,
                // enlargeFactor: 200,

                aspectRatio: .1,
                initialPage: 0,
              ),
              itemCount: state.ticketsList.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final item = state.ticketsList[itemIndex];

                DateTime? date;

                if (item.ordEvent?.evDatetime != null) {
                  date = DateTimeUtils.stringToDateTimeJS(
                      item.ordEvent!.evDatetime!);
                }

                String? dateToBy;

                if (item.ordExpirationDate != null) {
                  try {
                    final dates = DateTimeUtils.stringToDateTimeJS(
                        item.ordExpirationDate!);

                    dateToBy = DateFormat('dd.MM.yyyy | HH:mm').format(dates);
                  } catch (e) {
                    //
                  }
                }

                return Container(
                  width: MediaQuery.sizeOf(context).width * 0.76,
                  height: MediaQuery.sizeOf(context).height * 0.76,
                  margin: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 30,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 200,
                                    minWidth: 100,
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          item.ordEvent?.evThumbImageLink ??
                                              item.ordEvent?.evImageLink ??
                                              '',
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  child: Text(
                                    item.ordEvent?.evTitle ?? '',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
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
                                  'ДАТА ТА ЧАС',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF5F5F5F),
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
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
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                if (item.ordEventTickets?.isNotEmpty == true &&
                                    item.ordIsExpired != true) ...[
                                  const Divider(),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  const Text(
                                    'МІСЦЕ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF5F5F5F),
                                      fontSize: 10,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  seatBus(item.ordEventTickets ?? []),
                                ]
                              ],
                            ),
                          ),
                          if (item.ordIsPayed ?? false) ...[
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: OutlinedButton(
                                onPressed: () async {
                                  context.router.push(
                                      TiketSitsShellRoute(ticketModel: item));
                                },
                                style: AppStyles.buttonStadiumBlue,
                                child: const Text(
                                  'Переглянути квитки',
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: OutlinedButton(
                                onPressed: () async {
                                  try {
                                    handleProgress(true, context);
                                    await getIt<OrderRepository>().getOrderPdfById(
                                        id: item.ordId!,
                                        name:
                                            "ticket_${item.ordEvent?.evTitle}_${item.ordCreatedDate}");
                                  } catch (e) {
                                    AppHelper.showToastD(context,
                                        text: "Щось пішло не так",
                                        bgColor: Colors.red,
                                        textColor: Colors.white);
                                  } finally {
                                    handleProgress(false, context);
                                  }
                                },
                                style: AppStyles.buttonStadiumBlue,
                                child: const Text(
                                  'Завантажити квитки',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                          ] else ...[
                            if (item.ordPaymentLink?.isNotEmpty == true)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: OutlinedButton(
                                  onPressed: () async {
                                    getIt<TiketCubit>().updateLoad(true);

                                    await context.router.push(ByTicketRoute(
                                        GoToTicket: true,
                                        url: item.ordPaymentLink!));

                                    getIt<TiketCubit>().updateLoad(false);
                                  },
                                  style: AppStyles.buttonStadiumBlue,
                                  child: const Text(
                                    'СПЛАТИТИ',
                                  ),
                                ),
                              ),
                            const SizedBox(
                              height: 8,
                            ),
                            if (dateToBy != null)
                              Column(
                                children: [
                                  const Text("Заброньовано до:"),
                                  Text(dateToBy),
                                ],
                              ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'НЕСПЛАЧЕНИЙ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 22,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ]
                        ]),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget seatBus(List<EventTicket> list) {
    List<SeatView> seatsBus = [];

    if (list.isNotEmpty) {
      final listNew = list.where((element) => element.etRowNumber != null);

      final List<int> indexROws = listNew.map((e) => e.etRowNumber!).toList();

      final set = {...indexROws};

      for (var rowId in set) {
        seatsBus.add(SeatView(
            rowId: rowId.toString(),
            seatIds: listNew
                .where((element) => element.etRowNumber == rowId)
                .map((e) => e.etPlaceNumber)
                .join(", ")));
      }
    }

    return Column(
      children: [
        ...seatsBus
            .map((e) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Ряд ${e.rowId}, місця ${e.seatIds}")],
                ))
            .toList(),
      ],
    );
  }

  emptyState() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Constant.tikets, width: 100, height: 100),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const SizedBox(
          width: 271,
          child: Text(
            'У Вас ще немає куплених квитків',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
