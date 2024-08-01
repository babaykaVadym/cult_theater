// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:cult_app/data/models/models.dart' as _i28;
import 'package:cult_app/ui/main_view.dart' as _i8;
import 'package:cult_app/ui/screens/afisha/afisha_screen.dart' as _i1;
import 'package:cult_app/ui/screens/afisha/widgets/afisha_view.dart' as _i2;
import 'package:cult_app/ui/screens/auth/auth_screen.dart' as _i3;
import 'package:cult_app/ui/screens/by_ticket_pdage/by_ticket_pdage.dart'
    as _i5;
import 'package:cult_app/ui/screens/login/login_screen.dart' as _i7;
import 'package:cult_app/ui/screens/message/massega_screen.dart' as _i9;
import 'package:cult_app/ui/screens/new/news_screen.dart' as _i10;
import 'package:cult_app/ui/screens/notification/notification_screen.dart'
    as _i11;
import 'package:cult_app/ui/screens/order_by/notification/order_tiket_screen.dart'
    as _i12;
import 'package:cult_app/ui/screens/pay_cards/pay_cards_screen.dart' as _i13;
import 'package:cult_app/ui/screens/recovery_password/ener_pincode.dart' as _i6;
import 'package:cult_app/ui/screens/recovery_password/recovery_password.dart'
    as _i14;
import 'package:cult_app/ui/screens/registration/registration_screen.dart'
    as _i15;
import 'package:cult_app/ui/screens/remove_account/remove_account.dart' as _i16;
import 'package:cult_app/ui/screens/splash/splash_screen.dart' as _i17;
import 'package:cult_app/ui/screens/support/support.dart' as _i18;
import 'package:cult_app/ui/screens/ticket/tiket_screen.dart' as _i20;
import 'package:cult_app/ui/screens/ticket/widgets/tickets_list_shell.dart'
    as _i21;
import 'package:cult_app/ui/screens/trypa/trypa_screen.dart' as _i23;
import 'package:cult_app/ui/screens/trypa_main/trypa_main_screen.dart' as _i22;
import 'package:cult_app/ui/screens/user_information/user_information.dart'
    as _i24;
import 'package:cult_app/ui/screens/want_watch/want_watch_screen.dart' as _i25;
import 'package:cult_app/ui/theater/by_ticket_teater.dart' as _i4;
import 'package:cult_app/ui/theater/theater_screen.dart' as _i19;
import 'package:flutter/material.dart' as _i27;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    AfishaRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AfishaScreen(),
      );
    },
    AfishaViewRoute.name: (routeData) {
      final args = routeData.argsAs<AfishaViewRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AfishaViewScreen(
          key: args.key,
          afishaModel: args.afishaModel,
        ),
      );
    },
    AuthRoute.name: (routeData) {
      final args =
          routeData.argsAs<AuthRouteArgs>(orElse: () => const AuthRouteArgs());
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AuthScreen(
          key: args.key,
          recoverPasword: args.recoverPasword,
          textMessage: args.textMessage,
        ),
      );
    },
    BayTeaterTicketRoute.name: (routeData) {
      final args = routeData.argsAs<BayTeaterTicketRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BayTeaterTicketScreen(
          key: args.key,
          selectedTicketsList: args.selectedTicketsList,
          afishaModel: args.afishaModel,
        ),
      );
    },
    ByTicketRoute.name: (routeData) {
      final args = routeData.argsAs<ByTicketRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ByTicketScreen(
          key: args.key,
          url: args.url,
          GoToTicket: args.GoToTicket,
        ),
      );
    },
    EnterPinRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.EnterPinScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.LoginScreen(
          key: args.key,
          canGoBack: args.canGoBack,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainScreen(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MessageScreen(),
      );
    },
    NewsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NewsScreen(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NotificationScreen(),
      );
    },
    OrderByTicketRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.OrderByTicketScreen(),
      );
    },
    PayCardsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PayCardsScreen(),
      );
    },
    RecoweryPasswordRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RecoweryPasswordScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RegistrationScreen(),
      );
    },
    RemoveAccountRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.RemoveAccountScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SplashScreen(),
      );
    },
    SupportRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SupportScreen(),
      );
    },
    TeaterRoute.name: (routeData) {
      final args = routeData.argsAs<TeaterRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i19.TeaterScreen(
          key: args.key,
          afishaModel: args.afishaModel,
        ),
      );
    },
    TiketRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.TiketScreen(),
      );
    },
    TiketSitsShellRoute.name: (routeData) {
      final args = routeData.argsAs<TiketSitsShellRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.TiketSitsShellScreen(
          key: args.key,
          ticketModel: args.ticketModel,
        ),
      );
    },
    TrypaMainRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.TrypaMainScreen(),
      );
    },
    TrypaRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.TrypaScreen(),
      );
    },
    UserInformationRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.UserInformationScreen(),
      );
    },
    WantWatchRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.WantWatchScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AfishaScreen]
class AfishaRoute extends _i26.PageRouteInfo<void> {
  const AfishaRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AfishaRoute.name,
          initialChildren: children,
        );

  static const String name = 'AfishaRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AfishaViewScreen]
class AfishaViewRoute extends _i26.PageRouteInfo<AfishaViewRouteArgs> {
  AfishaViewRoute({
    _i27.Key? key,
    required _i28.AfishaModel afishaModel,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          AfishaViewRoute.name,
          args: AfishaViewRouteArgs(
            key: key,
            afishaModel: afishaModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AfishaViewRoute';

  static const _i26.PageInfo<AfishaViewRouteArgs> page =
      _i26.PageInfo<AfishaViewRouteArgs>(name);
}

class AfishaViewRouteArgs {
  const AfishaViewRouteArgs({
    this.key,
    required this.afishaModel,
  });

  final _i27.Key? key;

  final _i28.AfishaModel afishaModel;

  @override
  String toString() {
    return 'AfishaViewRouteArgs{key: $key, afishaModel: $afishaModel}';
  }
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i26.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i27.Key? key,
    bool recoverPasword = false,
    String? textMessage,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            recoverPasword: recoverPasword,
            textMessage: textMessage,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i26.PageInfo<AuthRouteArgs> page =
      _i26.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    this.recoverPasword = false,
    this.textMessage,
  });

  final _i27.Key? key;

  final bool recoverPasword;

  final String? textMessage;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, recoverPasword: $recoverPasword, textMessage: $textMessage}';
  }
}

/// generated route for
/// [_i4.BayTeaterTicketScreen]
class BayTeaterTicketRoute
    extends _i26.PageRouteInfo<BayTeaterTicketRouteArgs> {
  BayTeaterTicketRoute({
    _i27.Key? key,
    required List<_i28.EventTicket> selectedTicketsList,
    required _i28.AfishaModel afishaModel,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          BayTeaterTicketRoute.name,
          args: BayTeaterTicketRouteArgs(
            key: key,
            selectedTicketsList: selectedTicketsList,
            afishaModel: afishaModel,
          ),
          initialChildren: children,
        );

  static const String name = 'BayTeaterTicketRoute';

  static const _i26.PageInfo<BayTeaterTicketRouteArgs> page =
      _i26.PageInfo<BayTeaterTicketRouteArgs>(name);
}

class BayTeaterTicketRouteArgs {
  const BayTeaterTicketRouteArgs({
    this.key,
    required this.selectedTicketsList,
    required this.afishaModel,
  });

  final _i27.Key? key;

  final List<_i28.EventTicket> selectedTicketsList;

  final _i28.AfishaModel afishaModel;

  @override
  String toString() {
    return 'BayTeaterTicketRouteArgs{key: $key, selectedTicketsList: $selectedTicketsList, afishaModel: $afishaModel}';
  }
}

/// generated route for
/// [_i5.ByTicketScreen]
class ByTicketRoute extends _i26.PageRouteInfo<ByTicketRouteArgs> {
  ByTicketRoute({
    _i27.Key? key,
    required String url,
    bool GoToTicket = false,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          ByTicketRoute.name,
          args: ByTicketRouteArgs(
            key: key,
            url: url,
            GoToTicket: GoToTicket,
          ),
          initialChildren: children,
        );

  static const String name = 'ByTicketRoute';

  static const _i26.PageInfo<ByTicketRouteArgs> page =
      _i26.PageInfo<ByTicketRouteArgs>(name);
}

class ByTicketRouteArgs {
  const ByTicketRouteArgs({
    this.key,
    required this.url,
    this.GoToTicket = false,
  });

  final _i27.Key? key;

  final String url;

  final bool GoToTicket;

  @override
  String toString() {
    return 'ByTicketRouteArgs{key: $key, url: $url, GoToTicket: $GoToTicket}';
  }
}

/// generated route for
/// [_i6.EnterPinScreen]
class EnterPinRoute extends _i26.PageRouteInfo<void> {
  const EnterPinRoute({List<_i26.PageRouteInfo>? children})
      : super(
          EnterPinRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterPinRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginScreen]
class LoginRoute extends _i26.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i27.Key? key,
    bool canGoBack = true,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            canGoBack: canGoBack,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i26.PageInfo<LoginRouteArgs> page =
      _i26.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.canGoBack = true,
  });

  final _i27.Key? key;

  final bool canGoBack;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, canGoBack: $canGoBack}';
  }
}

/// generated route for
/// [_i8.MainScreen]
class MainRoute extends _i26.PageRouteInfo<void> {
  const MainRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MessageScreen]
class MessageRoute extends _i26.PageRouteInfo<void> {
  const MessageRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NewsScreen]
class NewsRoute extends _i26.PageRouteInfo<void> {
  const NewsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NotificationScreen]
class NotificationRoute extends _i26.PageRouteInfo<void> {
  const NotificationRoute({List<_i26.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OrderByTicketScreen]
class OrderByTicketRoute extends _i26.PageRouteInfo<void> {
  const OrderByTicketRoute({List<_i26.PageRouteInfo>? children})
      : super(
          OrderByTicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderByTicketRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PayCardsScreen]
class PayCardsRoute extends _i26.PageRouteInfo<void> {
  const PayCardsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          PayCardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PayCardsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RecoweryPasswordScreen]
class RecoweryPasswordRoute extends _i26.PageRouteInfo<void> {
  const RecoweryPasswordRoute({List<_i26.PageRouteInfo>? children})
      : super(
          RecoweryPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoweryPasswordRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RegistrationScreen]
class RegistrationRoute extends _i26.PageRouteInfo<void> {
  const RegistrationRoute({List<_i26.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RemoveAccountScreen]
class RemoveAccountRoute extends _i26.PageRouteInfo<void> {
  const RemoveAccountRoute({List<_i26.PageRouteInfo>? children})
      : super(
          RemoveAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'RemoveAccountRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SplashScreen]
class SplashRoute extends _i26.PageRouteInfo<void> {
  const SplashRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SupportScreen]
class SupportRoute extends _i26.PageRouteInfo<void> {
  const SupportRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TeaterScreen]
class TeaterRoute extends _i26.PageRouteInfo<TeaterRouteArgs> {
  TeaterRoute({
    _i27.Key? key,
    required _i28.AfishaModel afishaModel,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          TeaterRoute.name,
          args: TeaterRouteArgs(
            key: key,
            afishaModel: afishaModel,
          ),
          initialChildren: children,
        );

  static const String name = 'TeaterRoute';

  static const _i26.PageInfo<TeaterRouteArgs> page =
      _i26.PageInfo<TeaterRouteArgs>(name);
}

class TeaterRouteArgs {
  const TeaterRouteArgs({
    this.key,
    required this.afishaModel,
  });

  final _i27.Key? key;

  final _i28.AfishaModel afishaModel;

  @override
  String toString() {
    return 'TeaterRouteArgs{key: $key, afishaModel: $afishaModel}';
  }
}

/// generated route for
/// [_i20.TiketScreen]
class TiketRoute extends _i26.PageRouteInfo<void> {
  const TiketRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TiketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TiketRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.TiketSitsShellScreen]
class TiketSitsShellRoute extends _i26.PageRouteInfo<TiketSitsShellRouteArgs> {
  TiketSitsShellRoute({
    _i27.Key? key,
    required _i28.TicketModel ticketModel,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          TiketSitsShellRoute.name,
          args: TiketSitsShellRouteArgs(
            key: key,
            ticketModel: ticketModel,
          ),
          initialChildren: children,
        );

  static const String name = 'TiketSitsShellRoute';

  static const _i26.PageInfo<TiketSitsShellRouteArgs> page =
      _i26.PageInfo<TiketSitsShellRouteArgs>(name);
}

class TiketSitsShellRouteArgs {
  const TiketSitsShellRouteArgs({
    this.key,
    required this.ticketModel,
  });

  final _i27.Key? key;

  final _i28.TicketModel ticketModel;

  @override
  String toString() {
    return 'TiketSitsShellRouteArgs{key: $key, ticketModel: $ticketModel}';
  }
}

/// generated route for
/// [_i22.TrypaMainScreen]
class TrypaMainRoute extends _i26.PageRouteInfo<void> {
  const TrypaMainRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TrypaMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrypaMainRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i23.TrypaScreen]
class TrypaRoute extends _i26.PageRouteInfo<void> {
  const TrypaRoute({List<_i26.PageRouteInfo>? children})
      : super(
          TrypaRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrypaRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.UserInformationScreen]
class UserInformationRoute extends _i26.PageRouteInfo<void> {
  const UserInformationRoute({List<_i26.PageRouteInfo>? children})
      : super(
          UserInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInformationRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WantWatchScreen]
class WantWatchRoute extends _i26.PageRouteInfo<void> {
  const WantWatchRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WantWatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'WantWatchRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}
