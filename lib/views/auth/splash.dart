// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/views/auth/onboard.dart';
import 'package:hive/utils/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
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
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: wHTCOLOUR,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/logo.png",
                height: getScreenHeight(64),
                width: getScreenWidth(64),
              ),
            ),
            SizedBox(height: getScreenHeight(9)),
            Text(
              "hive",
              style: bold(43, pRYCOLOUR),
            ),
          ],
        ));
  }
}
