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
                  "Create Account",
                  style: w600(32, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  label: "Email address",
                  hint: "greg@gmail.com",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  label: "Create a username",
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
                SizedBox(height: getScreenHeight(41)),
                MainButton(
                    press: () {
                      RouteNavigators.routeNoWayHome(
                        context,
                        Login(),
                      );
                    },
                    text: "CONTINUE",
                    colour: pRYCOLOUR,
                    txtcolour: wHTCOLOUR),
                SizedBox(height: getScreenHeight(41)),
                GestureDetector(
                  onTap: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Login(),
                    );
                  },
                  child: Text(
                    "Already have an account ? Login",
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
