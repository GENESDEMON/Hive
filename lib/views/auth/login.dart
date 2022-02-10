// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:hive/core/api/api_config.dart';
import 'package:hive/utils/colours.dart';
import 'package:hive/utils/routes.dart';
import 'package:hive/utils/size_config.dart';
import 'package:hive/utils/text_style.dart';
import 'package:hive/views/auth/register.dart';
import 'package:hive/views/tabs/home.dart';
import 'package:hive/views/auth/reset.dart';
import 'package:hive/widgets/general.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Values to be collected
  signIn(String username, String password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': username, 'password': password};

    print(data);
    var jsonResponse = null;

    var details = {"username": username, "password": password};

    var response = await http.post(Uri.parse(baseURL),
        body: details,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          "Accept": "application/json",
        },
        encoding: Encoding.getByName("utf-8"));
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString(
            "access_token", jsonResponse['access_token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Home()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  bool _isLoading = false;

  final TextEditingController usernameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

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
                  "Login",
                  style: w600(32, pRYCOLOUR),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  controller: usernameController,
                  label: "Username",
                  hint: "greghu1379",
                  iconz: Icon(null),
                ),
                SizedBox(height: getScreenHeight(31)),
                InputFields(
                  controller: passwordController,
                  label: "Password",
                  hint: "........",
                  iconz: Icon(null),
                  isPassword: true,
                ),
                SizedBox(height: getScreenHeight(31)),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      RouteNavigators.routeNoWayHome(
                        context,
                        Forgot(),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: w400(15, pRYCOLOUR),
                    ),
                  ),
                ),
                SizedBox(height: getScreenHeight(41)),
                MainButton(
                    press: () {
                       usernameController.text == "" ||
                            passwordController.text == ""
                        ? null
                        : () {
                            setState(() {
                              _isLoading = true;
                            });
                            signIn(usernameController.text,
                                passwordController.text);
                          };
                     
                    },
                    text: "LOGIN",
                    colour: pRYCOLOUR,
                    txtcolour: wHTCOLOUR),
                SizedBox(height: getScreenHeight(41)),
                GestureDetector(
                  onTap: () {
                    RouteNavigators.routeNoWayHome(
                        context,
                        Register(),
                      );
                  },
                  child: Text(
                    "Don’t have an account? Create one",
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
