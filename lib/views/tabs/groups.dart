// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/groups/create_group.dart';
import 'package:hive/views/tabs/more.dart';
import 'package:hive/widgets/bottom_nav.dart';
import 'package:hive/widgets/general.dart';

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
        child: SingleChildScrollView(
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
              GestureDetector(
                onTap: () {
                  RouteNavigators.routeNoWayHome(context, CreateGroup());
                },
                child: Container(
                  height: getScreenHeight(99),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F5),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Create New Group",
                          style: w600(15, pRYCOLOUR),
                          textAlign: TextAlign.center,
                        ),
                        Spacer(),
                        Image.asset("assets/leaf.png"),
                      ],
                    ),
                  ),
                ),
              ),
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
              GridView.count(
                primary: true,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: getScreenHeight(9.0),
                crossAxisSpacing: getScreenWidth(13.0),
                children: <Widget>[
                  GroupCard(),
                  GroupCard(),
                ],
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
              GridView.count(
                primary: true,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: getScreenHeight(9.0),
                crossAxisSpacing: getScreenWidth(13.0),
                children: <Widget>[
                  GroupCard(),
                  GroupCard(),
                  GroupCard(),
                  GroupCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
