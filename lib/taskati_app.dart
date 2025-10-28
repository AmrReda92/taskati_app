import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/routes/app_routs.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/features/login/presentation/ui/login_screen.dart';
import 'package:taskati_application/features/splash/presentation/ui/splash_screen.dart';

class TaskatiApp extends StatelessWidget {
  const TaskatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(800, 1600),
    minTextAdapt: true,
    splitScreenMode: true,
      child: MaterialApp(
        onGenerateRoute: AppRoutes.routes
         ,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen ,
      ),
    );
  }
}
