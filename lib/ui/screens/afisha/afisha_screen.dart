import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/models/models.dart';
import 'package:cult_app/data/repository/ewents.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/date_time.dart';
import 'package:cult_app/resources/screen_utils.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/afisha/cubit/afisha_cubit.dart';
import 'package:cult_app/ui/screens/drawer/drawer_mebu.dart';
import 'package:intl/intl.dart';

@RoutePage()
class AfishaScreen extends StatefulWidget {
  const AfishaScreen({
    super.key,
  });

  @override
  State<AfishaScreen> createState() => _AfishaScreenState();
}

class _AfishaScreenState extends State<AfishaScreen> with ScreenUtils {
  late CarouselController buttonCarouselController;
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  void initState() {
    getIt.resetLazySingleton<AfishaCubit>();
    buttonCarouselController = CarouselController();

//    getIt<AfishaCubit>().init(context)
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppHelper.keyAfisha = key;
    return BlocProvider(
      create: (context) => getIt<AfishaCubit>()..init(context),
      child: BlocBuilder<AfishaCubit, AfishaState>(
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

          return PopScope(
            canPop: false,
            onPopInvoked: (v) {
              //  key.currentState!.closeDrawer();
            },
            child: Scaffold(
              key: key,
              backgroundColor: Colors.white,
              drawer: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Drawer(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: DrawerWidget(
                    user: state.user,
                  ),
                ),
              ),
              appBar: AppBar(
                  title: const Text(
                    'АФІША',
                  ),
                  centerTitle: true,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    onPressed: () {
                      key.currentState!.openDrawer();
                    },
                  )
                  // GestureDetector(
                  //     onTap: () {
                  //       widget.keyScaf.currentState!.openDrawer();
                  //     },
                  //     child: const Icon(
                  //       Icons.menu,
                  //       size: 30,
                  //     )),
                  // actions: [
                  //   const Icon(Icons.calendar_month_outlined),
                  //   const SizedBox(
                  //     width: 12,
                  //   ),
                  //   const Icon(Icons.density_medium_rounded),
                  //   const SizedBox(
                  //     width: 12,
                  //   ),
                  //   GestureDetector(
                  //       onTap: () {
                  //         showModalBottomSheet(
                  //           isScrollControlled: true,
                  //           context: context,
                  //           builder: (BuildContext cont) {
                  //             return SizedBox(
                  //               height: MediaQuery.of(context).size.height * .8,
                  //               child: SearchSheet(
                  //                   height: MediaQuery.of(context).size.height * .8),
                  //             );
                  //           },
                  //         );
                  //       },
                  //       child: const Icon(Icons.search)),
                  //   const SizedBox(
                  //     width: 12,
                  //   ),
                  // ],
                  ),
              body: Stack(
                children: [
                  if (state.afishaList.isEmpty)
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Афіша пуста"),
                    ),
                  if (state.afishaList.isNotEmpty)
                    Positioned(
                      top: 20,
                      left: 0,
                      right: 0,
                      bottom: 20,
                      child: CarouselSlider.builder(
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) async {
                            if (!state.loadLastPages &&
                                index == state.afishaList.length - 1) {
                              handleProgress(true, context);

                              getIt<AfishaCubit>().loadNewPage(context);
                              handleProgress(false, context);
                            }
                          },
                          viewportFraction: 0.7,
                          aspectRatio: .4,
                          initialPage: 0,
                        ),
                        itemCount: state.afishaList.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          final item = state.afishaList[itemIndex];

                          DateTime? date;

                          if (item.evDatetime != null) {
                            date = DateTimeUtils.stringToDateTimeJS(
                                item.evDatetime!);
                          }

                          return GestureDetector(
                            onTap: () async {
                              // getIt<AfishaCubit>().updateLoad(true);
                              AfishaModel? afishaModel;
                              try {
                                handleProgress(true, context);
                                afishaModel = await getIt<EwentsRepository>()
                                    .getEventsById(newsId: item.evId!);
                              } catch (e) {
                                //
                              } finally {
                                handleProgress(false, context);
                                //  getIt<AfishaCubit>().updateLoad(false);
                              }

                              context.router.push(AfishaViewRoute(
                                  afishaModel: afishaModel ?? item));
                            },
                            child: SizedBox(
                                child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child: CachedNetworkImage(
                                    imageUrl: item.evImageLink ?? '',
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        Container(
                                      color: Colors.white,
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.error),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '${DateFormat('dd.MM.yyyy | HH:mm').format(date ?? DateTime.now())} | ${item.evMinAge ?? ''}+',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xFF7987A6),
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                )
                              ],
                            )),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
