// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/views/auth/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Onboard(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: pRYCOLOUR,
        // ignore: prefer_const_constructors
        body: Center(
          child: Image.asset(
            "assets/logo.png",
            height: getScreenHeight(64),
            width: getScreenWidth(64),
          ),
        ));
  }
}
