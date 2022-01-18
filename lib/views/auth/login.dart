// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/home.dart';
import 'package:hive/views/auth/register.dart';
import 'package:hive/views/auth/reset.dart';
import 'package:hive/widgets/general.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: w600(25, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(5)),
            Text(
              "Been a minute! How are you doing? 👋🏾 ",
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
              label: "Your pin",
              hint: "........",
              iconz: Icon(null),
              isPassword: true,
            ),
            SizedBox(height: getScreenHeight(41)),
            MainButton(
                press: () {
                  RouteNavigators.routeNoWayHome(
                    context,
                    Home(),
                  );
                },
                text: "LOGIN",
                colour: pRYCOLOUR,
                txtcolour: wHTCOLOUR),
            Spacer(),
            GestureDetector(
              onTap: () {
                RouteNavigators.routeNoWayHome(
                  context,
                  Forgot(),
                );
              },
              child: Text(
                "Forgot Password?",
                style: w400(15, pRYCOLOUR),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getScreenHeight(7)),
            GestureDetector(
              onTap: () {
                RouteNavigators.routeNoWayHome(
                  context,
                  Register(),
                );
              },
              child: Text(
                "Create a new account",
                style: w400(15, pRYCOLOUR),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
