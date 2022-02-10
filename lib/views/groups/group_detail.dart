// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/groups/create_post.dart';
import 'package:hive/widgets/general.dart';

class GroupDetails extends StatelessWidget {
  const GroupDetails({Key? key}) : super(key: key);

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
              GroupDetails(),
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
            Center(
              child: Image.asset(
                "assets/user.png",
                height: getScreenHeight(37),
                width: getScreenWidth(37),
              ),
            ),
            SizedBox(height: getScreenHeight(7)),
            Center(
              child: Text(
                "Anxious Assemble",
                style: w500(15, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getScreenHeight(5)),
            Center(
              child: Text(
                "A safe space for people with anxiety to let go and be free to be their unadulterated selves.",
                style: w400(11, bLKCOLOUR),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getScreenHeight(20)),
            PostCard(
                title: "I had another panic-attack",
                text:
                    "I could not breath, voices kept screamig in my head. i want to feel normal and i really need to stop crying. Sigh",
                comments: "34",
                owner: "Alice Dayo"),
            SizedBox(height: getScreenHeight(10)),
            PostCard(
                title: "I had another panic-attack",
                text:
                    "I could not breath, voices kept screamig in my head. i want to feel normal and i really need to stop crying. Sigh",
                comments: "34",
                owner: "Alice Dayo"),
            SizedBox(height: getScreenHeight(10)),
            PostCard(
                title: "I had another panic-attack",
                text:
                    "I could not breath, voices kept screamig in my head. i want to feel normal and i really need to stop crying. Sigh",
                comments: "34",
                owner: "Alice Dayo"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: pRYCOLOUR,
        onPressed: () {
          RouteNavigators.routeNoWayHome(
            context,
            CreatePost(),
          );
        },
        child: Icon(
          Icons.comment,
          color: wHTCOLOUR,
          size: 15,
        ),
      ),
    );
  }
}
