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
                  "Forgot Password?",
                  style: w600(32, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(11)),
                Text(
                  "Enter the email address associated with your account and we’d send a link on how to reset your password",
                  style: w400(14, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(41)),
                InputFields(
                  label: "Email address",
                  hint: "greg@gmail.com",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(41)),
                MainButton(
                    press: () {
                      RouteNavigators.routeNoWayHome(
                        context,
                        Login(),
                      );
                    },
                    text: "SEND LINK",
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
                    "I know my password - Login",
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
