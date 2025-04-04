import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {


  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  double? height,width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            titleWidget(),
            registerButton(),

          ],
                ),
        ),)),
    );
  }
  Widget titleWidget(){
    return Text("Kwinstagram",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: width!*0.08,
      ),);
  }
  Widget registerButton(){
    return MaterialButton(
      height: height!*0.07,
      minWidth: width!*0.7,
      color: Colors.red,
      onPressed: (){},
    child: Text("Register",
      style: TextStyle(
        color: Colors.white,
        fontSize: width!*0.059,
        fontWeight: FontWeight.w500,
      ),
    ),);
  }

}
