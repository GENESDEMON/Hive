// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/login.dart';
import 'package:hive/widgets/general.dart';

class Forgot extends StatelessWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Forgot Pin",
              style: w600(25, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(5)),
            Text(
              "You keep forgetting, ah ah ah!",
              style: w400(14, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(21)),
            InputFields(
              label: "Email Address",
              hint: "greg@gmail.com",
              iconz: Icon(null),
            ),
            SizedBox(height: getScreenHeight(41)),
            MainButton(
              press: () {},
              text: "SEND INSTRUCTIONS",
              colour: pRYCOLOUR,
              txtcolour: wHTCOLOUR,
            ),
            SizedBox(height: getScreenHeight(21)),
            Center(
              child: GestureDetector(
                onTap: () {
                  RouteNavigators.routeNoWayHome(
                    context,
                    Login(),
                  );
                },
                child: Text(
                  "Go back to Login",
                  style: w400(15, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
