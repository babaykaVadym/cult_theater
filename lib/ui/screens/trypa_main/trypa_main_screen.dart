import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:cult_app/ui/screens/trypa/cubit/trypa_cubit.dart';
import 'package:cult_app/ui/screens/trypa/widgets/trypa_item_sheet.dart';

@RoutePage()
class TrypaMainScreen extends StatefulWidget {
  const TrypaMainScreen({super.key});

  @override
  State<TrypaMainScreen> createState() => _TrypaMainScreenState();
}

class _TrypaMainScreenState extends State<TrypaMainScreen> {
  @override
  void initState() {
    getIt.resetLazySingleton<TrypaCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("TrypaScreen");
    return BlocProvider(
        create: (context) => getIt<TrypaCubit>()..init(),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'ТРУПА',
            ),
            centerTitle: true,
          ),
          body: BlocBuilder<TrypaCubit, TrypaState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Column(
                  children: [
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                );
              }

              final listActor = state.actorsList;

              if (listActor.isEmpty) {
                return emptyState();
              }

              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  childAspectRatio: 1.1,
                  children: List.generate(
                    listActor.length,
                    (index) {
                      final item = listActor[index];

                      return GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext cont) {
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * .9,
                                child: TrypaItemSheet(
                                    actorItem: item,
                                    height: MediaQuery.of(context).size.height *
                                        .8),
                              );
                            },
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(4),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              item.thEmpImageLink == null
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: SvgPicture.asset(
                                            Constant.personIcon,
                                            width: 80,
                                            height: 80,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Expanded(
                                      child: Center(
                                        // child: ConstrainedBox(
                                        //     constraints: BoxConstraints(maxHeight: 200,maxWidth: 200, minHeight: 200, minWidth: 200),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          child: Image.network(
                                            item.thEmpImageLink!,
                                            height: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          // ),
                                        ),
                                      ),
                                    ),
                              Text(
                                item.thEmpName ?? '',
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Color(0xFF1B1E24),
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  overflow: TextOverflow.clip,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                child: Text(
                                  item.thEmpDescription ?? '',
                                  maxLines: 2,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ));
  }

  emptyState() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(Constant.trupaIccon, width: 100, height: 100),
        const SizedBox(
          height: 32,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 271,
              child: Text(
                'Список акторів відсутній',
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
        ),
      ],
    );
  }
}
