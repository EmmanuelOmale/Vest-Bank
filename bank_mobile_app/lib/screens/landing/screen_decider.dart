import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'first_screen.dart';

class ScreenDecider extends StatefulWidget {
  _Welcome createState() => new _Welcome();
}

class _Welcome extends State<ScreenDecider> {
  @override
  void initState() {
    // if (kIsWeb) {
    //   // running on the web!
    //   Navigator.pop(context);
    //    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    // }
    super.initState();
  }

  checkplatform() {
    if (Platform.isAndroid) {
      // Android-specific code
      return true;
    } else if (Platform.isIOS) {
      // iOS-specific code
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (kIsWeb) {
            //return const WebHome();
          }
          return FirstScreen();
        },
      ),
    );
  }
}
