import 'package:flutter/material.dart';
import 'package:team/helpers/textFiled.dart';
import 'package:team/ui/appBackGround.dart';

import 'health.dart';

class HomePage extends StatelessWidget {
  final name;

  final pass;

  const HomePage({Key key, this.name, this.pass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    return AppBackground(
      index: 2,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              height: heightScreen * .7,
              width: double.infinity,
              // color: Colors.lightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "  Welcome  " + name.toString(),
                    style: TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "تم تسجيل دخولك بنجاح",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    )),
                  ),
                  CustomButton(
                      text: "الرئيسه",
                      onTap: () {
                        // Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HealthScreen(),));
                      }),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
