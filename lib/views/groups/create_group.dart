// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/groups/success.dart';
import 'package:hive/views/tabs/groups.dart';
import 'package:hive/widgets/general.dart';

class CreateGroup extends StatelessWidget {
  const CreateGroup({Key? key}) : super(key: key);

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
              Groups(),
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
        padding: EdgeInsets.fromLTRB(40, 100, 40, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Create a new group",
                style: w600(19, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getScreenHeight(31)),
              InputFields(
                label: "Group display name",
                hint: "",
                iconz: Icon(null),
              ),
              SizedBox(height: getScreenHeight(31)),
              InputFields(
                label: "Group description",
                hint: "",
                iconz: Icon(null),
              ),
              SizedBox(height: getScreenHeight(31)),
              InputFields(
                label: "Group Image link",
                hint: "",
                iconz: Icon(null),
              ),
              SizedBox(height: getScreenHeight(31)),
              MainButton(
                  press: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Success(),
                    );
                  },
                  text: "CREATE GROUP",
                  colour: pRYCOLOUR,
                  txtcolour: wHTCOLOUR),
            ],
          ),
        ),
      ),
    );
  }
}
