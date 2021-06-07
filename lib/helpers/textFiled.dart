import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  final child;
  final String lable;

  const CustomTextFiled({Key key, this.child, this.lable}) : super(key: key);

  @override
  _CustomTextFiledState createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  widget.lable,
                  style: TextStyle(color: Colors.purple, fontSize: 18),
                )),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Card(
                  color: Colors.grey.shade300,
                  elevation: 1.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      // color: Colors.yellow,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: widget.child)))
        ],
      ),
    );
  }
}

Widget CustomButton({onTap, @required text}) {
  return InkWell(
    onTap: onTap
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
    ,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightGreen.shade400,
            borderRadius: BorderRadius.circular(15)),
        width: 150,
        height: 60,
        child: Center(
            child: Text(
          text.toString(),
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    ),
  );
}
