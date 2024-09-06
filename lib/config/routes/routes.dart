import 'package:e_commerce_shoes/presentation/pages/Home.dart';
import 'package:e_commerce_shoes/presentation/pages/login.dart';
import 'package:e_commerce_shoes/presentation/pages/recovery.dart';
import 'package:e_commerce_shoes/presentation/pages/register.dart';
import 'package:flutter/material.dart';

class Routes {
    static final Map<String, WidgetBuilder> routes = {
     "Login":(context)=>Login(),
      "Register":(context)=>Register(),
    "Recovery":(context)=>Recovery(),
        "Home":(context)=>Home(),
    };
  }
  
  