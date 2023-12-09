import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/constants.dart';
import 'splash_screen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => new _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      onClose();
    });
  }

  Future<void> onClose() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("Token");
    String? firstInstall = sharedPreferences.getString("FirstInstall");

    print("Token **********");
    print(token);
    print("Token **********");

    if (firstInstall == null) {
      // Navigate to SplashScreen if it's the first install
      moveToScreen(SplashScreen());
    } else {
      // Navigate to HomePage if token is present, otherwise LoginPage
      //token != null ? moveToScreen(HomePage()) : moveToScreen(LoginPage());
    }
  }

  void moveToScreen(Widget widget) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => widget,
        transitionDuration: const Duration(seconds: 1),
        transitionsBuilder: (context, anim1, anim2, child) {
          return FadeTransition(
            opacity: anim1,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            height: height,
            width: width,
            color: kPrimaryColorWhite,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        kPrimaryAppColor,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        appLogo,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Welcome to Vest Bank.',
                      style: TextStyle(
                        color: kPrimaryAppColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
