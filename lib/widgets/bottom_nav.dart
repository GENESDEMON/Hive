// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/views/tabs/groups.dart';
import 'package:hive/views/tabs/home.dart';
import 'package:hive/views/tabs/more.dart';
import 'package:hive/views/tabs/resources.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final Menu selectedMenu;

  @override
  Widget build(BuildContext context) {
    //for when the menu option is not clicked
    final Color inActiveIconColor = bLKCOLOUR.withOpacity(0.5);
    return Container(
      height: getScreenHeight(80),
      padding: EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        color: wHTCOLOUR,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //home options
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 20,
                    color: Menu.home == selectedMenu
                        ? pRYCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Home(),
                    );
                  },
                ),
                Text(
                  "Home",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.home == selectedMenu
                        ? pRYCOLOUR
                        : bLKCOLOUR.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            //groups option
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.people,
                    size: 20,
                    color: Menu.groups == selectedMenu
                        ? pRYCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Groups(),
                    );
                  },
                ),
                Text(
                  "Groups",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.groups == selectedMenu
                        ? pRYCOLOUR
                        : bLKCOLOUR.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            //resources option
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.folder,
                    size: 20,
                    color: Menu.resources == selectedMenu
                        ? pRYCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Resources(),
                    );
                  },
                ),
                Text(
                  "Resources",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.resources == selectedMenu
                        ? pRYCOLOUR
                        : bLKCOLOUR.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            //more option
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 20,
                    color: Menu.more == selectedMenu
                        ? pRYCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      More(),
                    );
                  },
                ),
                Text(
                  "More",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.more == selectedMenu
                        ? pRYCOLOUR
                        : bLKCOLOUR.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
