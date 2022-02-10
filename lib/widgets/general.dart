// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    Key? key,
    required this.label,
    required this.hint,
    required this.iconz,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.onSaved,
  }) : super(key: key);
  final String label;
  final String hint;
  final Widget iconz;
  final bool? isPassword;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final FormFieldValidator? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: w400(11, bLKCOLOUR.withOpacity(0.6)),
        ),
        SizedBox(height: getScreenHeight(13)),
        TextFormField(
          key: key,
          style: TextStyle(color: Colors.black),
          controller: controller,
          obscureText: isPassword! == true ? true : false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff686868).withOpacity(0.4),
              ),
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            hintText: hint,
            hintStyle: GoogleFonts.inter(
              fontSize: getScreenHeight(14),
              fontWeight: FontWeight.w400,
              color: gRNCOLOUR,
            ),
            suffixIcon: IconButton(
              icon: iconz,
              color: Color(0xff686868),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.press,
    required this.text,
    required this.colour,
    required this.txtcolour,
  }) : super(key: key);
  final void Function()? press;
  final String text;
  final Color colour;
  final Color txtcolour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: getScreenHeight(60),
        width: double.infinity,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: getScreenHeight(16),
              fontWeight: FontWeight.w500,
              color: txtcolour,
            ),
          ),
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    Key? key,
    required this.text1,
    required this.subcolor,
    required this.press,
  }) : super(key: key);
  final String text1;
  final Color subcolor;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getScreenHeight(21)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: GoogleFonts.inter(
                      fontSize: getScreenHeight(16),
                      fontWeight: FontWeight.w500,
                      color: subcolor,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: bLKCOLOUR,
                size: getScreenHeight(13),
              ),
            ],
          ),
          SizedBox(height: getScreenHeight(13)),
        ],
      ),
    );
  }
}

class GroupCard extends StatelessWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(111),
      width: getScreenWidth(150),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F5),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/user.png",
              height: getScreenHeight(46),
              width: getScreenWidth(46),
            ),
            SizedBox(height: getScreenHeight(7)),
            Text(
              "Anxious Assemble",
              style: w600(15, pRYCOLOUR),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getScreenHeight(7)),
            Text(
              "30 members",
              style: w400(13, bLKCOLOUR),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ResourceCard extends StatelessWidget {
  const ResourceCard({
    Key? key,
    required this.name,
    required this.owner,
    required this.size,
    required this.link,
    this.iconz,
  }) : super(key: key);
  final String name, owner, size, link;
  final Widget? iconz;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(link),
      child: Container(
        height: getScreenHeight(120),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF4F4F5),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/leaf.png",
                ),
                SizedBox(width: getScreenWidth(13)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: w600(14, pRYCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getScreenHeight(5)),
                    Text(
                      owner,
                      style: w400(11, bLKCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getScreenHeight(5)),
                    Text(
                      size,
                      style: w400(9, bLKCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: iconz,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.title,
    required this.text,
    required this.comments,
    required this.owner,
    this.iconz,
  }) : super(key: key);
  final String title, owner, comments, text;
  final Widget? iconz;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: getScreenHeight(120),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffF4F4F5),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: w600(14, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(5)),
                Text(
                  owner,
                  style: w400(11, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(5)),
                Text(
                  owner,
                  style: w400(9, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(5)),
                Text(
                  text,
                  style: w400(11, bLKCOLOUR),
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(children: [
                    Icon(
                      Icons.comment,
                      color: pRYCOLOUR,
                      size: 15,
                    ),
                    SizedBox(width: getScreenWidth(7)),
                    Text(
                      comments,
                      style: w400(9, bLKCOLOUR),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
