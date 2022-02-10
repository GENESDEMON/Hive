// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/core/api/api_config.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/login.dart';
import 'package:hive/views/tabs/home.dart';
import 'package:hive/widgets/general.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Values to be collected
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  Future register() async {
    var response = await http.post(
      Uri.parse(baseURL),
      headers: {"Accept": "applicarion/json"},
      body: {
        "username": _username.text,
        "email": _email.text,
        "password": _password.text,
      },
    );
    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "Ooops something went wrong",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registration successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wHTCOLOUR,
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 100),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: getScreenHeight(64),
                  width: getScreenWidth(64),
                ),
                SizedBox(height: getScreenHeight(21)),
                Text(
                  "Create Account",
                  style: w600(32, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  controller: _email,
                  label: "Email address",
                  hint: "greg@gmail.com",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  controller: _username,
                  label: "Create a username",
                  hint: "greghu1379",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  controller: _password,
                  label: "Password",
                  hint: "........",
                  iconz: Icon(null),
                  isPassword: true,
                ),
                SizedBox(height: getScreenHeight(41)),
                MainButton(
                    press: () {
                      register();
                    },
                    text: "CONTINUE",
                    colour: pRYCOLOUR,
                    txtcolour: wHTCOLOUR),
                SizedBox(height: getScreenHeight(41)),
                GestureDetector(
                  onTap: () {
                    RouteNavigators.routeNoWayHome(
                      context,
                      Login(),
                    );
                  },
                  child: Text(
                    "Already have an account ? Login",
                    style: w400(15, bLKCOLOUR),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
