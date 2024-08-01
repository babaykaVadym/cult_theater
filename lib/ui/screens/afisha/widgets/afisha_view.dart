import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/actor_repository.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/resources/styles.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/trypa/widgets/trypa_item_sheet.dart';
import 'package:intl/intl.dart';

@RoutePage()
class AfishaViewScreen extends StatefulWidget {
  const AfishaViewScreen({super.key, required this.afishaModel});
  final AfishaModel afishaModel;

  @override
  State<AfishaViewScreen> createState() => _AfishaViewScreenState();
}

class _AfishaViewScreenState extends State<AfishaViewScreen> with ScreenUtils {
  DateTime? date;

  @override
  void initState() {
    if (widget.afishaModel.evDatetime != null) {
      date = DateTimeUtils.stringToDateTimeJS(widget.afishaModel.evDatetime!);
    }
    super.initState();
  }

  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    debugPrint("AfishaViewScreen");
    return Scaffold(
      key: key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        actions: const [
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: CachedNetworkImage(
                imageUrl: widget.afishaModel.evImageLink ?? '',
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(
              height: 20,
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
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            item(
              'НАЙБЛИЖЧІ ДАТИ',
              '${DateFormat('dd.MM.yyyy | HH:mm').format(date ?? DateTime.now())} | ${widget.afishaModel.evMinAge ?? ''}+',
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            // const SizedBox(
            //   height: 20,
            // ),
            // item(
            //   'АВТОР',
            //   '',
            // ),

            if (widget.afishaModel.evDirector != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'АВТОР',
                widget.afishaModel.evDirector?.thEmpName ?? '',
                onTap: () async {
                  handleProgress(true, context);
                  Actor? act;

                  try {
                    act = await getIt<ActorRepository>().getActorById(
                        actorId: widget.afishaModel.evDirector!.thEmpId!);
                  } catch (e) {
                    //
                  }
                  handleProgress(false, context);

                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext cont) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .9,
                        child: TrypaItemSheet(
                            actorItem: act ?? widget.afishaModel.evDirector!,
                            height: MediaQuery.of(context).size.height * .8),
                      );
                    },
                  );
                },
              ),
            ] else if (widget.afishaModel.evDirectorCustom != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'АВТОР',
                widget.afishaModel.evDirectorCustom ?? '',
              ),
            ],

            if (widget.afishaModel.evDuration != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'ТРИВАЛІСТЬ',
                '${widget.afishaModel.evDuration ?? ''} Хв',
              ),
            ],
            if (widget.afishaModel.evLanguage != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'МОВА',
                widget.afishaModel.evLanguage ?? '',
              ),
            ],
            if (widget.afishaModel.evGenre != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'ЖАНР',
                widget.afishaModel.evGenre ?? '',
              ),
            ],
            if (widget.afishaModel.evDescription != null) ...[
              const SizedBox(
                height: 20,
              ),
              item(
                'СЮЖЕТ',
                widget.afishaModel.evDescription ?? '',
              ),
            ],

            if (widget.afishaModel.evActors?.isNotEmpty == true) ...[
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'АКТОРИ',
                    style: TextStyle(
                      color: Color(0xFF5F5F5F),
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                  children: widget.afishaModel.evActors!
                      .map((e) => GestureDetector(
                            onTap: () async {
                              handleProgress(true, context);
                              Actor? act;

                              try {
                                act = await getIt<ActorRepository>()
                                    .getActorById(actorId: e.thEmpId!);
                              } catch (e) {
                                //
                              }
                              handleProgress(false, context);

                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext cont) {
                                  return SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height * .9,
                                    child: TrypaItemSheet(
                                        actorItem: act ?? e,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .8),
                                  );
                                },
                              );
                            },
                            child: Text("${e.thEmpName ?? ''}, "),
                          ))
                      .toList()),

              // item(
              //   'АКТОРИ',
              //   widget.afishaModel.evActors?.join(", ") ?? '',
              // ),
            ] else if (widget.afishaModel.evActorsCustom?.isNotEmpty ==
                true) ...[
              item(
                'АКТОРИ',
                widget.afishaModel.evActorsCustom ?? '',
              ),
            ],
            const SizedBox(
              height: 20,
            ),
            if (widget.afishaModel.evThumbImageLink != null)
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: CachedNetworkImage(
                  imageUrl: widget.afishaModel.evThumbImageLink ?? '',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Column(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 32,
                          width: 32,
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                      ),
                    ],
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton(
              onPressed: () => context.router
                  .navigate(TeaterRoute(afishaModel: widget.afishaModel)),
              style: AppStyles.buttonStadiumBlue,
              child: const Text(
                'ОБРАТИ КВИТОК',
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }

  Widget item(String labbel, String text, {Function? onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              labbel,
              style: const TextStyle(
                color: Color(0xFF5F5F5F),
                fontSize: 10,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: onTap == null
              ? null
              : () {
                  onTap();
                },
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
        )
      ],
    );
  }
}
