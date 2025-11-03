import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskati_application/core/routes/app_routs.dart';
import 'package:taskati_application/core/routes/routes.dart';
import 'package:taskati_application/core/theme/cubit/theme_cubit.dart';
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
      child: BlocProvider(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              theme: context.read<ThemeCubit>().appTheme,
              onGenerateRoute: AppRoutes.routes
              ,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.homeScreen,
            );
          },
        ),
      ),
    );
  }
}
