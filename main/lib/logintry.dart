// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/pages/category.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //String _email;
  //String _password;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext conterxt) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset("lib/assets/right_side_pills.svg",
                        semanticsLabel: 'Pills'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("lib/assets/app_logo.svg",
                        semanticsLabel: 'SandWech Logo'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("lib/assets/left_side_pills.svg",
                        semanticsLabel: 'Pills'),
                  ],
                ),
                Form(
                    child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-mail'),
                      controller: emailController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      controller: passwordController,
                      obscureText: true,
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Text('Accedi')))
                  ],
                ))
              ],
            )));
  }
}

Future<String> postLogin(email, password) async {
  try {
    var dio = Dio();
    var url = "http://localhost/food-api/API/user/login.php";
    print(email + " " + password);
    var response =
        await dio.post(url, data: {'email': email, 'password': password});
    var responseBody = response.data.toString();
    var decoded = jsonDecode(responseBody);
    return decoded;
  } catch (e) {
    print(e);
    return "";
  }
}
