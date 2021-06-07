import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team/helpers/textFiled.dart';
import 'package:team/ui/appBackGround.dart';
import 'package:team/ui/singup.dart';
import 'package:toast/toast.dart';

import 'homePage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    return AppBackground(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: heightScreen * .55,
              width: 700,
              // color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    CustomTextFiled(
                      lable: ": الايميل او اسم المستخدم ",
                      child: TextField(
                        controller: _name,
                      ),
                    ),
                    CustomTextFiled(
                      lable: ": الرقم السري ",
                      child: TextField(
                        controller: _pass,
                        obscureText: true,
                      ),
                    ),
                    // On Tap In Button to Navigator to Another Screen
                    // عند الضغط علي الزرا ينقل الي الصفحه الاخري
                    CustomButton(
                        onTap: () {

                          var nameVal = _name.text;
                          var passVal = _pass.text;

                          if (_name.text.isNotEmpty && _pass.text.isNotEmpty) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  // {
                                  // return
                                  // }
                                  builder: (context) => HomePage(
                                    name: nameVal,
                                  ),
                                ));
                          } else {
                            Toast.show('اكمل الباينات', context);
                          }
                        },
                        text: "تسجيل"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SingUp(),
                                  ));
                            },
                            child: Text(
                              "انشاء حساب",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text("ليس لديك حساب ؟ "),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
          )),
    );
  }
}
