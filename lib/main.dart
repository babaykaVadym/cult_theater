import 'dart:io';

import 'package:cult_app/data/dependency_container.dart';
import 'package:cult_app/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await resolveDependencies();
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) await Hive.initFlutter();
  await Hive.openBox('session');

  // await  Firebase.initializeApp();
  runApp(
    FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return Phoenix(child: const MyApp());
        } else {
          return const SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    //     useMaterial3: true,
    //   ),
    //   home: const NewScreen(),
    // );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          onBackground: Colors.white,
          seedColor: Colors.white,
          background: Colors.white,
        ),
        useMaterial3: true,
      ),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
