// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/tabs/groups.dart';
import 'package:hive/widgets/general.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/yada.png",
              height: getScreenHeight(100),
              width: getScreenWidth(100),
            ),
            SizedBox(height: getScreenHeight(20)),
            Text(
              "Group created successfully",
              style: w500(17, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(30)),
            MainButton(
                press: () {
                  RouteNavigators.routeNoWayHome(
                    context,
                    Groups(),
                  );
                },
                text: "Back to groups",
                colour: pRYCOLOUR,
                txtcolour: wHTCOLOUR),
          ],
        ),
      ),
    );
  }
}
