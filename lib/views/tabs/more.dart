// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/login.dart';
import 'package:hive/views/more/edit_profile.dart';
import 'package:hive/widgets/bottom_nav.dart';
import 'package:hive/widgets/general.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: Menu.more,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "More Things",
              style: w600(19, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(40)),
            Options(
                text1: "Edit your Profile",
                subcolor: bLKCOLOUR,
                press: () {
                  RouteNavigators.routeNoWayHome(
                    context,
                    EditProfile(),
                  );
                }),
            Options(
                text1: "LOGOUT",
                subcolor: Colors.red,
                press: () {
                  RouteNavigators.routeNoWayHome(
                    context,
                    Login(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
