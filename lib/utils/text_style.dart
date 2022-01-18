import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/utils/size_config.dart';

TextStyle bold(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.bold,
    height: 1.5,
    decoration: decoration,
  );
}

TextStyle normal(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.normal,
    height: 1.5,
    decoration: decoration,
  );
}

TextStyle w600(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w600,
    decoration: decoration,
    height: 2,
  );
}

TextStyle w500(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w500,
    decoration: decoration,
    height: 2,
  );
}

TextStyle w400(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w400,
    height: getScreenHeight(2.0),
    decoration: decoration,

    // letterSpacing: 22,
  );
}

TextStyle w300(
  double size,
  Color color, {
  TextDecoration? decoration,
}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: FontWeight.w300,
    // letterSpacing: 22,
    height: 1.5,
    decoration: decoration,
  );
}
