import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vest_bank/screens/landing/widgets/current_screen_indicator.dart';

//import '../../helpers/helpers.dart';
import '../../utils/constants.dart';
// import '../auth/login.dart';
// import '../auth/sign_up.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => new _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  int currentIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void onAddButtonTapped(int index) {
    // use this to animate to the page
    //pageController.animateToPage(index,curve: Curve(22));
    // or this to jump to it without animating
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: kPrimaryColorWhite,
        body: SafeArea(
          child: Stack(
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (var int) {
                  setState(() {
                    currentIndex = int;
                  });
                },
                children: [
                  customView(landing1, height, width, welcomeText1, splashScreenText1),
                  customView(landing2, height, width, welcomeText2, splashScreenText2),
                  customView(landing3, height, width, welcomeText3, splashScreenText3),
                ],
              ),
              Positioned(
                  bottom: 45,
                  left: 20,
                  right: 20,
                  child: SizedBox(
                   // width: width,
                    child: Column(
                      children: [
                        currentIndex == 0
                        ? CurrentScreenIndicator(currentIndex: 0,)
                            : currentIndex == 1
                            ? CurrentScreenIndicator(currentIndex: 1,)
                            : CurrentScreenIndicator(currentIndex: 2,),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  firstInstallSetter() async {
    SharedPreferences? sharedPreferences =
    await SharedPreferences.getInstance();
    sharedPreferences.setString("FirstInstall", "FirstInstall");
  }

  Widget customView(String icon,double height, double width, String topText, String downText) {
    return Container(
      width: width,
      height: height,
      color: kPrimaryColorWhite,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            margin: const EdgeInsets.only(left: 5, right: 5, top: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  icon,
                  width: 441,
                  height: 331,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  topText,
                  //style: kTextStyleSans(kPrimaryColorBlack, 30, FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 22,
                ),
                Text(
                    downText,
                    textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  returnContainer(Color color, double width) {
    return Container(
      width: width,
      margin: const EdgeInsets.only(left: 3),
      height: 5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
    );
  }
}
