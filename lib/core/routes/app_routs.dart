import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/features/add_task/presentation/ui/add_task_screen.dart';
import 'package:taskati_application/features/home/presentation/ui/home_screen.dart';
import 'package:taskati_application/features/login/presentation/cubit/login_cubit.dart';
import 'package:taskati_application/features/login/presentation/ui/login_screen.dart';
import 'package:taskati_application/features/splash/presentation/ui/splash_screen.dart';

class AppRoutes {

  static Route<dynamic>? routes(RouteSettings setting) {
    switch (setting.name) {
      case Routes.splashScreen :
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.loginScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginScreen(),
            ),
        );
      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_)=>HomeScreen());

      case Routes.addTaskScreen :
        return MaterialPageRoute(builder: (_)=>AddTaskScreen());
    }
  }

}
