// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/tabs/more.dart';
import 'package:hive/widgets/general.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            RouteNavigators.routeNoWayHome(
              context,
              More(),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
            size: 15,
          ),
        ),
        titleSpacing: 0.0,
        title: Text(
          "Go back",
          style: w500(15, bLKCOLOUR),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 50, 40, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Edit your profile",
              style: w600(19, bLKCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(31)),
            InputFields(
              label: "Email address",
              hint: "greg@gmail.com",
              iconz: Icon(null),
            ),
            SizedBox(height: getScreenHeight(31)),
            InputFields(
              label: "Username",
              hint: "greghu1379",
              iconz: Icon(null),
            ),
            SizedBox(height: getScreenHeight(31)),
            InputFields(
              label: "Password",
              hint: "**************",
              iconz: Icon(null),
              isPassword: true,
            ),
            SizedBox(height: getScreenHeight(41)),
            MainButton(
                press: () {},
                text: "SAVE DETAILS",
                colour: pRYCOLOUR,
                txtcolour: wHTCOLOUR),
          ],
        ),
      ),
    );
  }
}
