import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:taskati_application/features/login/presentation/ui/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    navigateToLoginScreen();
    super.initState();
  }

  Future<void> navigateToLoginScreen ()async{
   await Future.delayed(Duration(seconds: 3));
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (e)=>false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/images/splash_image.json"),
              Text("Taskati",style: TextStyle(
                fontSize: 60.sp
              ),),
              SizedBox(height: 40.h,),
              Text("It is Time To Get Organized",style: TextStyle(
                fontSize: 50.sp
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
