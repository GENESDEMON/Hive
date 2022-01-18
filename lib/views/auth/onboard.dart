// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/views/auth/login.dart';
import 'package:hive/views/auth/register.dart';
import 'package:hive/widgets/general.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bLKCOLOUR.withOpacity(0.81),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/onb.png"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(const Color(0xff000000), BlendMode.hue),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(33, 0, 33, 70),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Having a difficult day? Find someone who understands.",
                      style: GoogleFonts.inter(
                        fontSize: getScreenHeight(33),
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: getScreenHeight(30),
                    ),
                    MainButton(
                      press: () {
                        RouteNavigators.routeNoWayHome(
                          context,
                          Register(),
                        );
                      },
                      text: "REGISTER",
                      colour: pRYCOLOUR,
                      txtcolour: wHTCOLOUR,
                    ),
                    SizedBox(
                      height: getScreenHeight(10),
                    ),
                    MainButton(
                      press: () {
                        RouteNavigators.routeNoWayHome(
                          context,
                          Login(),
                        );
                      },
                      text: "LOGIN",
                      colour: wHTCOLOUR,
                      txtcolour: pRYCOLOUR,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
