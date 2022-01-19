// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/widgets/bottom_nav.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: Menu.groups,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
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
            SizedBox(height: getScreenHeight(40)),
            Container(
                decoration: BoxDecoration(
                  color: pRYCOLOUR.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Image.asset("assets/g1.png")),
            SizedBox(height: getScreenHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your groups",
                  style: w600(14, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "view all",
                  style: w400(14, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: getScreenHeight(10)),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/g2.png"),
                  Image.asset("assets/g2.png"),
                ],
              ),
            ),
            SizedBox(height: getScreenHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular groups",
                  style: w600(14, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "view all",
                  style: w400(14, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: getScreenHeight(10)),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/g2.png"),
                  Image.asset("assets/g2.png"),
                ],
              ),
            ),
            SizedBox(height: getScreenHeight(25)),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/g2.png"),
                  Image.asset("assets/g2.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
