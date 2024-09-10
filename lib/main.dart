import 'package:e_commerce_shoes/firebase_options.dart';
import 'package:e_commerce_shoes/presentation/bloc/auth_bloc.dart';
import 'package:e_commerce_shoes/presentation/pages/home.dart';
import 'package:e_commerce_shoes/presentation/pages/recovery.dart';
import 'package:e_commerce_shoes/presentation/pages/signIn.dart';
import 'package:e_commerce_shoes/presentation/pages/signup.dart';
import 'package:e_commerce_shoes/presentation/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Home(),
          initialRoute: "/",
          routes: {
            "/SplashWrapper": (context) => const SplashWrapper(),
            "/Login": (context) => const LoginWrapper(),
            "/Register": (context) => const RegisterWrapper(),
            "/Recovery": (context) => Recovery(),
            "/Home": (context) => const HomeWrapper(),
          }),
    );
  }
}
