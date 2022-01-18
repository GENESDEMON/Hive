// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/enum.dart';
import 'package:hive/utils/size_config.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);
  final Menu selectedMenu;

  @override
  Widget build(BuildContext context) {
    //for when the menu option is not clicked
    final Color inActiveIconColor = wHTCOLOUR.withOpacity(0.5);
    return Container(
      height: getScreenHeight(80),
      padding: EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        color: pRYCOLOUR,
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
                        ? wHTCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Home",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.home == selectedMenu
                        ? wHTCOLOUR
                        : wHTCOLOUR.withOpacity(0.5),
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
                    Icons.chat_bubble_outline,
                    size: 20,
                    color: Menu.groups == selectedMenu
                        ? wHTCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Groups",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.groups == selectedMenu
                        ? wHTCOLOUR
                        : wHTCOLOUR.withOpacity(0.5),
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
                    Icons.chat_bubble_outline,
                    size: 20,
                    color: Menu.groups == selectedMenu
                        ? wHTCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Resources",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.resources == selectedMenu
                        ? wHTCOLOUR
                        : wHTCOLOUR.withOpacity(0.5),
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
                    Icons.more_horiz,
                    size: 20,
                    color: Menu.more == selectedMenu
                        ? wHTCOLOUR
                        : inActiveIconColor,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "More",
                  style: GoogleFonts.inter(
                    fontSize: getScreenWidth(10),
                    color: Menu.more == selectedMenu
                        ? wHTCOLOUR
                        : wHTCOLOUR.withOpacity(0.5),
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
