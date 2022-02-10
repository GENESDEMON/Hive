// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/widgets/bottom_nav.dart';
import 'package:hive/widgets/general.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: wHTCOLOUR,
        bottomNavigationBar: CustomBottomNav(
          selectedMenu: Menu.resources,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
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
              SizedBox(
                height: getScreenHeight(50),
                child: TabBar(
                  indicatorColor: pRYCOLOUR,
                  physics: const ClampingScrollPhysics(),
                  unselectedLabelColor: bLKCOLOUR.withOpacity(0.6),
                  labelColor: pRYCOLOUR,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      child: Text(
                        "Books",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Videos",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Podcasts",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getScreenHeight(20)),
                          ResourceCard(
                            name: 'On life being life',
                            size: '43 pages',
                            owner: 'Arthur Barracuda',
                            link:
                                'https://doi.apa.org/fulltext/2018-00750-003.html',
                            iconz: Icon(
                              Icons.book,
                              color: pRYCOLOUR,
                            ),
                          ),
                        ],
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
