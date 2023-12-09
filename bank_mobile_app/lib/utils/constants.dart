

// App images
import 'dart:ui';

const appLogo = "assets/images/ic_launcher.png";
const landing1 = "assets/svg/fast_loading.svg";
const landing2 = "assets/svg/savings_pana.svg";
const landing3 = "assets/svg/mobile_payments.svg";



// App Strings

const appName = "Vest Bank";
const welcomeText1 = "Easy, Fast & Trusted";
const welcomeText2 = "Saving Your Money";
const welcomeText3 = "Free Transactions";
const splashScreenText1 = "Fast money transfer and guaranteed safe transactions with others.";
const splashScreenText2 = "Track the progress of your savings and start a habit of saving with $appName.";
const splashScreenText3 = "Provides the quality of the financial system with free money transactions without any fees.";
const continueText = "Continue";

// App Colors
const appLogoText = Color(0xFF0C4C7A);
const kPrimaryButtonColor = Color(0xFF5063BF);
const kPrimaryAppColor = Color(0xFF5063BF);
const kPrimaryColorWhite = Color(0xFFFFFFFF);
//const kPrimaryColorBlack = Color(0xFF000000);
//const kPrimaryColorBlack = Color(0xFF1D1D35);


Color kColorSmoke = const Color(0xffC0C0C0);
Color kPrimaryColorBlack = Color(0xFF1E1E1E);
Color kDotColor = const Color(0xFF8EDFEB);


const kContentColorLightTheme = Color(0xFF1D1D35);
const kContentColorDarkTheme = Color(0xFFF5FCF9);
const kErrorColor = Color(0xFFF03738);



// App fonts

const fontFamily = "Inter";

TextStyle kTextStyleSans(
  Color colors,
  double size,
  FontWeight weight
) =>
    TextStyle(
      color: colors,
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: weight,
    );