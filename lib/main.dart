import 'package:airplane_bwa/cubit/auth_cubit.dart';
import 'package:airplane_bwa/cubit/destination_cubit.dart';
import 'package:airplane_bwa/cubit/seat_cubit.dart';
import 'package:airplane_bwa/shared/theme.dart';
import 'package:airplane_bwa/shared/theme_service.dart';
import 'package:airplane_bwa/ui/pages/bonus_page.dart';
import 'package:airplane_bwa/ui/pages/get_started_page.dart';
import 'package:airplane_bwa/ui/pages/main_page.dart';
import 'package:airplane_bwa/ui/pages/sign_in_page.dart';
import 'package:airplane_bwa/ui/pages/sign_up_page.dart';
import 'package:airplane_bwa/ui/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'cubit/page_cubit.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const SplashPage(),
              '/get-started': (context) => const GetStartedPage(),
              '/sign-up': (context) => SignUpPage(),
              '/sign-in': (context) => SignInPage(),
              '/bonus': (context) => const BonusPage(),
              '/main': (context) => const MainPage(),
            },
          );
        },
      ),
    );
  }
}
