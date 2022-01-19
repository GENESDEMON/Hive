// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/widgets/bottom_nav.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      bottomNavigationBar: CustomBottomNav(
        selectedMenu: Menu.home,
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
              SizedBox(height: getScreenHeight(60)),
              Container(
                  decoration: BoxDecoration(
                    color: pRYCOLOUR.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset("assets/search.png")),
              SizedBox(height: getScreenHeight(40)),
              Container(
                  decoration: BoxDecoration(
                    color: pRYCOLOUR.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset("assets/quote.png")),
              SizedBox(height: getScreenHeight(40)),
              Text(
                "Recommended resources",
                style: w600(14, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(10)),
              Image.asset("assets/1.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/2.png"),
              SizedBox(height: getScreenHeight(7)),
              Image.asset("assets/3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
