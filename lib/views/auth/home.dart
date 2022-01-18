// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/widgets/bottom_nav.dart';
import 'package:hive/widgets/general.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: wHTCOLOUR,
        bottomNavigationBar: CustomBottomNav(
          selectedMenu: Menu.home,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(40, 100, 40, 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/user.png",
                    height: 32,
                    width: 32,
                  ),
                  Row(
                    children: [
                      Text(
                        "WED 24 FEB  ",
                        style: w500(14, pRYCOLOUR),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: pRYCOLOUR,
                        size: getScreenHeight(27),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getScreenHeight(10)),
              // the tabbar

              SizedBox(
                height: getScreenHeight(50),
                child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: pRYCOLOUR,
                  physics: const ClampingScrollPhysics(),
                  unselectedLabelColor: bLKCOLOUR.withOpacity(0.6),
                  labelColor: pRYCOLOUR,
                  tabs: [
                    Tab(
                      child: Text(
                        "Symptom Monitor",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Treatment traker",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Schedule",
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Alice,",
                              style: w600(19, pRYCOLOUR),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Remember, you own this shit my gee! ✌🏾",
                              style: w400(14, pRYCOLOUR.withOpacity(0.74)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: getScreenHeight(10)),
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      "assets/one.png",
                                      height: getScreenHeight(168),
                                      width: getScreenWidth(155),
                                    ),
                                  ),
                                  SizedBox(width: getScreenWidth(11)),
                                  Expanded(
                                    child: Image.asset(
                                      "assets/two.png",
                                      height: getScreenHeight(168),
                                      width: getScreenWidth(155),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: getScreenHeight(20)),
                            Options(
                              text1: "Symptom history",
                              text2: "View your past symptoms",
                              subcolor: pRYCOLOUR,
                              press: null,
                            ),
                            Options(
                              text1: "Your health",
                              text2: "Update your health details",
                              subcolor: pRYCOLOUR,
                              press: null,
                            ),
                            Options(
                              text1: "Helps & Tips",
                              text2: "Get tips on common symptoms",
                              subcolor: pRYCOLOUR,
                              press: null,
                            ),
                            Options(
                              text1: "Stress Calmer",
                              text2: "Just because we care",
                              subcolor: pRYCOLOUR,
                              press: null,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text("It's rainy here"),
                    ),
                    Center(
                      child: Text("It's sunny here"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
