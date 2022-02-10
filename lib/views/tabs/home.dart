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
              SizedBox(height: getScreenHeight(20)),
              ResourceCard(
                name: 'On life being life',
                size: '43 pages',
                owner: 'Arthur Barracuda',
                link: 'https://doi.apa.org/fulltext/2018-00750-003.html',
                iconz: Icon(
                  Icons.book,
                  color: pRYCOLOUR,
                ),
              ),
              SizedBox(height: getScreenHeight(10)),
              ResourceCard(
                name: 'Learning how to deal with drama',
                size: '905 pages',
                owner: 'Arthur Barracuda',
                link: 'https://doi.apa.org/fulltext/2018-00750-003.html',
                iconz: Icon(
                  Icons.book,
                  color: pRYCOLOUR,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
