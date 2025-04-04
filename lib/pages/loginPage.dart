import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  double? height,width;
   String? _email;
   String? _password;

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
                titleWidget(),
                loginForm(),
                loginButton(),
                navigatetoRegisterPage(),
              ],
            ),
          ),),
        ),
      ),
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
        emailTextfield(), paswwordTextfield()
        ],
      )),
    );
  }

  Widget emailTextfield(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email...",
        hintStyle: TextStyle(
          color: Colors.grey
        )
      ),
      onSaved: (_value){
        setState(() {
          _email = _value;
        });
      },
      validator: (_value){
       bool _result = _value!.contains(
         RegExp(
             r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"),
        );
      return _result ? null : "please enter a valid Email";
      },
    );
  }

  Widget paswwordTextfield(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
      onSaved: (_value){
        setState(() {
          _password = _value;
        });
      },
      validator: (_value) => _value!.length > 6 ? null : "Password must carry 6 characters",

    );
  }

  Widget loginButton(){
    return MaterialButton(
      color: Colors.redAccent,
      height: height!*0.07,
      minWidth: width!*0.7,
      onPressed: _loginUser,
    child: Text("Login",
      style: TextStyle(
        color: Colors.white,
        fontSize: width!*0.059,
        fontWeight: FontWeight.w500,
      ),
    ),);
  }

  
  Widget navigatetoRegisterPage(){
    return GestureDetector(
      onTap:()=> Navigator.pushNamed(context, 'register'),
      child: Text("Don't have account?",
      style: TextStyle(
        fontSize: width!*0.04,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),),
    );
  }
  

  void _loginUser(){
    if(_loginFormKey.currentState!.validate()){
    _loginFormKey.currentState!.save();
    }
  }
}
