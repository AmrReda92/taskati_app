import 'package:flutter/material.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/features/login/presentation/ui/login_screen.dart';
import 'package:taskati_application/features/splash/presentation/ui/splash_screen.dart';

class AppRoutes {

 static Route<dynamic>? routes(RouteSettings setting) {

     switch (setting.name){
       case Routes.splashScreen :
         return MaterialPageRoute(builder: (_)=>SplashScreen());
       case Routes.loginScreen :
         return MaterialPageRoute(builder: (_)=>LoginScreen());
     }


  }

}
