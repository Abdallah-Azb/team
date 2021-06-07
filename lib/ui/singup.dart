import 'package:flutter/material.dart';
import 'package:team/helpers/textFiled.dart';
import 'package:team/ui/appBackGround.dart';
import 'package:team/ui/homePage.dart';
import 'package:toast/toast.dart';

class SingUp extends StatelessWidget {
  SingUp({Key key}) : super(key: key);
  TextEditingController _name = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _configPass = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      index: 2,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "انشاء حساب",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 25),
                    ),
                    CustomTextFiled(
                      lable: "الاسم",
                      child: TextField(
                        controller: _name,
                      ),
                    ),
                    CustomTextFiled(
                      lable: "الايميل",
                      child: TextField(
                        controller: _email,
                      ),
                    ),
                    CustomTextFiled(
                      lable: "رقم الهاتف",
                      child: TextField(
                        controller: _phone,
                      ),
                    ),
                    CustomTextFiled(
                      lable: "الرقم السري",
                      child: TextField(
                        controller: _pass,
                      ),
                    ),
                    CustomTextFiled(
                      lable: "تاكيد الرقم السري",
                      child: TextField(
                        controller: _configPass,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                        text: "تسجيل",
                        onTap: () {
                          var name = _name.text;
                          var pass = _pass.text.toString();
                          var configPass = _configPass.text.toString();
                          var email = _email.text.toString();
                          var phone = _phone.text.toString();
                          print(name);
                          if (_name.text.isNotEmpty &&
                              _phone.text.isNotEmpty &&
                              _email.text.isNotEmpty &&
                              _pass.text.isNotEmpty) {
                            if (pass == configPass) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(
                                      name: name,
                                    ),
                                  ));
                            } else {
                              print("wrong password");
                              Toast.show("الرقم السري غير متطابق", context,
                                  backgroundColor: Colors.purple, duration: 3);
                            }
                          } else {
                            Toast.show("اكمل البيانات", context);
                          }
                        })
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
