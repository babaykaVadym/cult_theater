import 'package:auto_route/auto_route.dart';
import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/data/repository/account_reposity.dart';
import 'package:cult_app/resources/app_helper.dart';
import 'package:cult_app/router/router.gr.dart';
import 'package:cult_app/ui/screens/ticket/cubit/tiket_cubit.dart';
import 'package:cult_app/ui/theater/cubit/theater_cubit.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../../../resources/styles.dart';

@RoutePage()
class ByTicketScreen extends StatefulWidget {
  const ByTicketScreen({super.key, required this.url, this.GoToTicket = false});
  final String url;
  final bool GoToTicket;

  @override
  State<ByTicketScreen> createState() => _ByTicketScreenState();
}

class _ByTicketScreenState extends State<ByTicketScreen> {
  late final WebViewController _controller;
  bool showLoad = false;

  bool showAuth = false;

  runData() async {
    setState(() {
      showLoad = true;
    });

    if (AppHelper.showAuth == true) {
      setState(() {
        showAuth = true;
      });
    } else {
      try {
        if (AppHelper.user == null) {
          final user = await getIt<AccountRepository>().profile();

          AppHelper.user = user;
        }
      } catch (e) {
        //
      }

      await Future.delayed(const Duration(seconds: 3));
      if (AppHelper.token != null) {
        AppHelper.appEmail = null;

        try {
          getIt.resetLazySingleton<TiketCubit>();
          getIt<TeaterCubit>().clearSeats();
        } catch (e) {
          //
        }

        // context.router.replaceAll([
        //   const TiketRoute(),
        // ]);
        context.router.replace(const TiketRoute());
        // context.router.removeLast();
      } else {
        context.router.replace(const MainRoute());
      }
    }
  }

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onUrlChange: (UrlChange change) {
            if (change.url != null) {
              if (!change.url!.contains('liqpay')) {
                // context.router.replace(const TiketRoute());

                runData();
              }
            }

            debugPrint('url change to ${change.url}');
          },
          onHttpAuthRequest: (HttpAuthRequest request) {},
        ),
      )
      ..loadRequest(Uri.parse(widget.url));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (v) {
        if (widget.GoToTicket) {
          //   context.router.removeLast();
          context.router.push(const TiketRoute());
        } else {
          try {
            //  getIt.resetLazySingleton<TiketCubit>();
            getIt<TeaterCubit>().clearSeats();
          } catch (e) {
            //
          }
          context.router.removeLast();
          context.router.replace(const TiketRoute());
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: showAuth || showLoad
              ? Container()
              : GestureDetector(
                  onTap: () {
                    // Navigator.pop(context);

                    if (widget.GoToTicket) {
//                      context.router.removeLast();
                      context.router.push(const TiketRoute());
                    } else {
                      try {
                        //  getIt.resetLazySingleton<TiketCubit>();
                        getIt<TeaterCubit>().clearSeats();
                      } catch (e) {
                        //
                      }
                      context.router.removeLast();
                      context.router.replace(const TiketRoute());
                    }
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
        ),
        body: showAuth
            ? Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                      child: SizedBox(
                          width: 191,
                          height: 71,
                          child: Image.asset(
                            'assets/Logo.png',
                            fit: BoxFit.cover,
                          ))),
                  const SizedBox(
                    height: 150,
                  ),
                  const Text(
                    'Авторизуйтесь для перегляду куплених квитків',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      AppHelper.showAuth = false;
                      context.router.replace(LoginRoute());
                    },
                    style: AppStyles.buttonStadiumBlue,
                    child: Text("Увійти".toUpperCase()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      AppHelper.showAuth = false;
                      context.router.replace(const MainRoute());
                    },
                    style: AppStyles.buttonStadiumBlue,
                    child: Text("Повернутись на головну".toUpperCase()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        context.router.navigate(const RecoweryPasswordRoute());
                      },
                      child: const Text("Не пам’ятаєш пароль?",
                          style: AppStyles.textBaseStyle))
                ],
              )
            : showLoad
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: CircularProgressIndicator(),
                      )
                    ],
                  )
                : WebViewWidget(controller: _controller),
      ),
    );
  }
}
