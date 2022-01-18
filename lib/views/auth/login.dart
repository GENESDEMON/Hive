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
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 100),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: getScreenHeight(64),
                  width: getScreenWidth(64),
                ),
                SizedBox(height: getScreenHeight(21)),
                Text(
                  "Login",
                  style: w600(32, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  label: "Username",
                  hint: "greghu1379",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  label: "Password",
                  hint: "........",
                  iconz: Icon(null),
                  isPassword: true,
                ),
                SizedBox(height: getScreenHeight(31)),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      RouteNavigators.routeNoWayHome(
                        context,
                        Forgot(),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: w400(15, pRYCOLOUR),
                    ),
                  ),
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
                SizedBox(height: getScreenHeight(41)),
                GestureDetector(
                  onTap: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Register(),
                    );
                  },
                  child: Text(
                    "Don’t have an account? Create one",
                    style: w400(15, bLKCOLOUR),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
