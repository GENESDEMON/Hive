// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/widgets/bottom_nav.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: Menu.resources,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Hi Greg,",
              style: w600(19, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(10)),
            Text(
              " I hope you have more sunshine than clouds today",
              style: w400(14, bLKCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(10)),
          ],
        ),
      ),
    );
  }
}
