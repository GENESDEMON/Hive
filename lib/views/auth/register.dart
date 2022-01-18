// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/login.dart';
import 'package:hive/widgets/general.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              "Register",
              style: w600(25, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(5)),
            Text(
              "Don’t go through the corners are you  ok ?  ",
              style: w400(14, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(21)),
            InputFields(
              label: "Username",
              hint: "greghu1379",
              iconz: Icon(null),
            ),
            SizedBox(height: getScreenHeight(21)),
            InputFields(
              label: "Email Address",
              hint: "greg@gmail.com",
              iconz: Icon(null),
            ),
            SizedBox(height: getScreenHeight(21)),
            InputFields(
              label: "Your pin",
              hint: "........",
              iconz: Icon(null),
              isPassword: true,
            ),
            SizedBox(height: getScreenHeight(41)),
            MainButton(
              press: () {},
              text: "REGISTER",
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
                  "Already have an account",
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
