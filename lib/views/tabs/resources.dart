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
        padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Resources",
                style: w600(19, pRYCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(10)),
              Text(
                "Here is a collection of articles, books and links to materials that could be helpful.",
                style: w400(14, bLKCOLOUR),
              ),
              SizedBox(height: getScreenHeight(40)),
              Text(
                "Books",
                style: w600(14, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(10)),
              Image.asset("assets/3.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/3.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/3.png"),
              SizedBox(height: getScreenHeight(20)),
              Text(
                "Videos",
                style: w600(14, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(10)),
              Image.asset("assets/2.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/2.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/2.png"),
              SizedBox(height: getScreenHeight(40)),
              Text(
                "Podcasts",
                style: w600(14, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(10)),
              Image.asset("assets/1.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/1.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/1.png"),
            ],
          ),
        ),
      ),
    );
  }
}
