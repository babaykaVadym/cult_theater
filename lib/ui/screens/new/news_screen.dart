import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/resources/constant.dart';
import 'package:cult_app/ui/screens/drawer/drawer_mebu.dart';
import 'package:cult_app/ui/screens/new/cubit/news_cubit.dart';
import 'package:cult_app/ui/screens/new/widgets/news_item.dart';

@RoutePage()
class NewsScreen extends StatefulWidget {
  const NewsScreen({
    super.key,
  });

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  GlobalKey<ScaffoldState> keyScaff = GlobalKey();
  @override
  void initState() {
    getIt.resetLazySingleton<NewsCubit>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppHelper.keyNews = keyScaff;
    debugPrint("newScreen");
    return BlocProvider(
        create: (context) => getIt<NewsCubit>()..init(),
        child: PopScope(
          canPop: false,
          onPopInvoked: (v) {},
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
            appBar: AppBar(
                scrolledUnderElevation: 0,
                title: const Text(
                  'НОВИНИ',
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
                )

                //  leading: const Icon(Icons.arrow_back),
                ),
            body: BlocBuilder<NewsCubit, NewsState>(
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

                final listNews = state.newList;

                if (listNews.isEmpty) {
                  return emptyState();
                }

                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return NewsItemWidget(newsModel: listNews[index]);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                            height: 12,
                          ),
                      itemCount: listNews.length),
                );
              },
            ),
          ),
        ));
  }

  emptyState() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        SvgPicture.asset(Constant.newsIcon, width: 100, height: 100),
        const SizedBox(
          width: 271,
          child: Text(
            'Немає новин',
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
