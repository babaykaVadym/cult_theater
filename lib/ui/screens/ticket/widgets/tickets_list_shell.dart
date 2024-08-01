import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/ui/theater/by_ticket_teater.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

@RoutePage()
class TiketSitsShellScreen extends StatefulWidget {
  const TiketSitsShellScreen({super.key, required this.ticketModel});

  final TicketModel ticketModel;

  @override
  State<TiketSitsShellScreen> createState() => _TiketSitsShellScreenState();
}

class _TiketSitsShellScreenState extends State<TiketSitsShellScreen>
    with ScreenUtils {
  late CarouselController buttonCarouselController;
  @override
  void initState() {
    buttonCarouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("TiketScreen");
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'МОЇ КВИТКИ',
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
        body: listTiCket());
  }

  listTiCket() {
    return Stack(
      children: [
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          bottom: 80,
          child: CarouselSlider.builder(
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,

                viewportFraction: 0.76,
                // enlargeFactor: 200,

                aspectRatio: .1,
                initialPage: 0,
              ),
              itemCount: (widget.ticketModel.ordEventTickets ?? []).length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                final item = widget.ticketModel.ordEventTickets![itemIndex];

                DateTime? date;

                if (widget.ticketModel.ordEvent?.evDatetime != null) {
                  date = DateTimeUtils.stringToDateTimeJS(
                      widget.ticketModel.ordEvent!.evDatetime!);
                }

                return Container(
                  width: MediaQuery.sizeOf(context).width * 0.76,
                  height: MediaQuery.sizeOf(context).height * 0.76,
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
                    child: Column(children: [
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
                                    borderRadius: BorderRadius.circular(20)),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child: CachedNetworkImage(
                                  imageUrl: widget.ticketModel.ordEvent
                                          ?.evThumbImageLink ??
                                      widget
                                          .ticketModel.ordEvent?.evImageLink ??
                                      '',
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
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
                                widget.ticketModel.ordEvent?.evTitle ?? '',
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
                            Text(
                              "Ряд ${item.etRowNumber ?? ''}, місця ${item.etPlaceNumber ?? ''}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      LayoutBuilder(builder: (context, ctx) {
                        return SizedBox(
                          height: 10,
                          child: Stack(
                            children: [
                              Center(
                                child: Dash(
                                    direction: Axis.horizontal,
                                    length: ctx.maxWidth,
                                    dashLength: 5,
                                    // thickness: 3.0,
                                    dashColor: Colors.grey.shade400),
                              ),
                              Positioned(
                                  left: -5,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey.shade200),
                                  )),
                              Positioned(
                                  right: -5,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey.shade200),
                                  ))
                            ],
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 12,
                      ),
                      if (item.etHash != null)
                        QrImageView(
                          data: item.etHash ?? '',
                          version: QrVersions.auto,
                          size: 100.0,
                        ),
                      const SizedBox(
                        height: 12,
                      ),
                      // TextButton(
                      //   onPressed: () async {

                      //     if (res != null) {
                      //       await showModalBottomSheet(
                      //         isScrollControlled: true,
                      //         context: context,
                      //         builder: (BuildContext cont) {
                      //           return SizedBox(
                      //             height:
                      //                 MediaQuery.of(context).size.height * .8,
                      //             child: DialogVie(
                      //                 mailValue: res,
                      //                 height:
                      //                     MediaQuery.of(context).size.height *
                      //                         .8),
                      //           );
                      //         },
                      //       );
                      //     }
                      //   },
                      //   child: const Text(
                      //     "Завантажити квиток",
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       color: Color(0xFF5F5F5F),
                      //       fontSize: 12,
                      //       fontFamily: 'Montserrat',
                      //       fontWeight: FontWeight.w400,
                      //       height: 0,
                      //     ),
                      //   ),
                      // ),
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
}
