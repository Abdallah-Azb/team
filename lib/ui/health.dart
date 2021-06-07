import 'package:flutter/material.dart';
import 'package:team/helpers/textFiled.dart';
import 'package:team/ui/appBackGround.dart';

class HealthScreen extends StatefulWidget {

   HealthScreen({Key key}) : super(key: key);

  @override
  _HealthScreenState createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
   TextEditingController _weight =TextEditingController();

   TextEditingController _height =TextEditingController();

   var PW ;

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      index: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFiled(
              lable: "",
              child: TextField(
                controller: _weight,
                decoration: InputDecoration(
                  hintText: " Enter Your Weight "
                ),
              ),
            ),
            CustomTextFiled(
              lable: "",
              child: TextField(
                controller: _height,
                decoration: InputDecoration(
                  hintText: "  Enter Your height"
                ),
              ),
            ),
            CustomButton(
              text: "الوزن المثالي",
              onTap: (){
                double w =double.parse( _weight.text.toString());
                double h =double.parse( _height.text.toString());
                setState(() {
                  PW = h - 100.0 ;
                  print(PW.toString());
                });

              }

            ),
            Text(PW.toString(),style: TextStyle(fontSize: 25,color: Colors.purple),)
          ],
        )
      ),
    );
  }
}
