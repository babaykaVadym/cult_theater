import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/auth.dart';
import 'package:cult_app/data/repository/order_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/theater/widgets/mail_selector.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

@RoutePage()
class BayTeaterTicketScreen extends StatefulWidget {
  const BayTeaterTicketScreen(
      {super.key,
      required this.selectedTicketsList,
      required this.afishaModel});
  final List<EventTicket> selectedTicketsList;
  final AfishaModel afishaModel;

  @override
  State<BayTeaterTicketScreen> createState() => _BayTeaterTicketScreenState();
}

class _BayTeaterTicketScreenState extends State<BayTeaterTicketScreen>
    with ScreenUtils {
  DateTime? date;

  List<SeatView> seatsBus = [];

  String? appEmail;
  String? appPhone;

  byTicket(String email, String ordUserPhone) async {
    try {
      handleProgress(true, context);
      OrderByModel? result;

      // try{
      //   result = await getIt<OrderRepository>()
      //       .byTiket(email: email, tikets: widget.selectedTicketsList);
      // }catch (e){
      //   //

      // }

      result = await getIt<OrderRepository>().byTiket(
          email: email,
          tikets: widget.selectedTicketsList,
          ordUserPhone: ordUserPhone);
      if (result != null && result.ordPayLink != null) {
        // if (!await launchUrl(Uri.parse(result.ordPayLink ?? ''))) {
        //   throw Exception('Could not launch ');
        // }
        if (result.enterToken != null) {
          try {
            final results = await getIt<AuthRepository>()
                .autoLogin(token: result.enterToken);

            if (results != null) {
              Box sessionStorage = Hive.box('session');
              await Future.wait([
                sessionStorage.put('user', jsonEncode(results)),
              ]);
              sessionStorage.put("token", results.accessToken);
              AppHelper.token = results.accessToken;
            } else {
              AppHelper.showToastD(context,
                  text: "Щось пішло не так!",
                  bgColor: Colors.red,
                  textColor: Colors.white);
            }
          } catch (e) {
            AppHelper.showToastD(context,
                text: "Щось пішло не так!",
                bgColor: Colors.red,
                textColor: Colors.white);
          }
        }

        if (AppHelper.user == null && result.enterToken == null) {
          AppHelper.showAuth = true;
        }

        AppHelper.ordId = result.ordId;
        handleProgress(false, context);
        context.router.push(
            ByTicketRoute(url: result.ordPayLink ?? '', GoToTicket: false));
      } else {
        handleProgress(false, context);
        AppHelper.showToastD(context,
            text: "Щось пішло не так!",
            bgColor: Colors.red,
            textColor: Colors.white);
      }
    } catch (e) {
      handleProgress(false, context);
      AppHelper.showToastD(context,
          text: "Щось пішло не так!",
          bgColor: Colors.red,
          textColor: Colors.white);
    }
  }

  @override
  void initState() {
    if (widget.afishaModel.evDatetime != null) {
      date = DateTimeUtils.stringToDateTimeJS(widget.afishaModel.evDatetime!);
    }

    if (widget.selectedTicketsList.isNotEmpty) {
      final list = widget.selectedTicketsList
          .where((element) => element.etRowNumber != null);

      final List<int> indexROws = list.map((e) => e.etRowNumber!).toList();

      final set = {...indexROws};

      for (var rowId in set) {
        seatsBus.add(SeatView(
            rowId: rowId.toString(),
            seatIds: list
                .where((element) => element.etRowNumber == rowId)
                .map((e) => e.etPlaceNumber)
                .join(", ")));
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Container(
        child: Column(
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
              DateFormat('dd.MM.yyyy | HH:mm').format(date ?? DateTime.now()),
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
            ...seatsBus
                .map((e) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Ряд ${e.rowId}, місця ${e.seatIds}")],
                    ))
                .toList(),
            const Spacer(),
            OutlinedButton(
              onPressed: () async {
                if ((AppHelper.user?.usrEmail != null &&
                            AppHelper.user!.usrEmail!.isNotEmpty ||
                        appEmail != null) &&
                    (AppHelper.user?.usrPhone != null &&
                            AppHelper.user!.usrPhone!.isNotEmpty ||
                        appPhone != null)) {
                  byTicket(
                    appEmail ?? AppHelper.user!.usrEmail!,
                    appPhone ?? AppHelper.user!.usrPhone!,
                  );
                } else {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .8,
                        child: EmailSheetAddToTicke(
                            newEmail: AppHelper.user?.usrEmail ?? appEmail,
                            onSave: (text, number) async {
                              appEmail = text;
                              appPhone = number;
                              AppHelper.appEmail = text;
                              AppHelper.appPhone = number;
                              byTicket(text, number);
                            },
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                }
              },
              style: AppStyles.buttonStadiumBlue,
              child: Text(
                  "Сплатити: ${widget.selectedTicketsList.where((element) => element.etPrice != null).map((e) => e.etPrice! ~/ 100).toList().sum} грн"),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class SeatView {
  final String rowId;
  final String seatIds;

  SeatView({required this.rowId, required this.seatIds});
}
