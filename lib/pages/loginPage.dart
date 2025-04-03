import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  double? height,width;

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(width!*0.05),
          child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                titlwWidget(),
                loginForm(),
                loginButton(),
              ],
            ),
          ),),
        ),
      ),
    );
  }
  Widget titlwWidget(){
    return Text("Kwinstagram",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: width!*0.08,
    ),);
  }

  Widget loginForm(){
    return Container(
      height: height!*0.20,
      child: Form(
          key: _loginFormKey,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        emailTextfield(),
          paswwordTextfield()
        ],
      )),
    );
  }

  Widget emailTextfield(){
    return TextField();
  }

  Widget paswwordTextfield(){
    return TextField();
  }




  Widget loginButton(){
    return MaterialButton(
      color: Colors.redAccent,
      height: height!*0.07,
      minWidth: width!*0.7,
      onPressed: (){},
    child: Text("Login",
      style: TextStyle(
        color: Colors.white,
        fontSize: width!*0.05,
        fontWeight: FontWeight.w500,
      ),
    ),);
  }



}
