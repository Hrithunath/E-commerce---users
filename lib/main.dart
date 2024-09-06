import 'package:e_commerce_shoes/presentation/pages/Home.dart';
import 'package:e_commerce_shoes/firebase_options.dart';
import 'package:e_commerce_shoes/presentation/pages/login.dart';
import 'package:e_commerce_shoes/presentation/pages/recovery.dart';
import 'package:e_commerce_shoes/presentation/pages/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Register(),
      routes: {
        "Login":(context)=>Login(),
        "Register":(context)=>Register(),
        "Recovery":(context)=>Recovery(),
        "Home":(context)=>Home(),
      },
    );
  }
}