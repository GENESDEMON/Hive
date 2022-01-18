// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';

class InputFields extends StatelessWidget {
  const InputFields({
    Key? key,
    required this.label,
    required this.hint,
    required this.iconz,
    this.isPassword = false,
    this.controller,
  }) : super(key: key);
  final String label;
  final String hint;
  final Widget iconz;
  final bool? isPassword;
  final TextEditingController? controller;

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
    required this.text2,
    required this.subcolor,
    required this.press,
  }) : super(key: key);
  final String text1;
  final String text2;
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
                      color: pRYCOLOUR,
                    ),
                  ),
                  SizedBox(height: getScreenHeight(7)),
                  Text(
                    text2,
                    style: GoogleFonts.inter(
                      fontSize: getScreenHeight(13),
                      fontWeight: FontWeight.w400,
                      color: subcolor,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: pRYCOLOUR,
                size: getScreenHeight(17),
              ),
            ],
          ),
          SizedBox(height: getScreenHeight(13)),
          Divider(
            color: pRYCOLOUR.withOpacity(0.3),
            height: getScreenHeight(0.2),
          ),
        ],
      ),
    );
  }
}
