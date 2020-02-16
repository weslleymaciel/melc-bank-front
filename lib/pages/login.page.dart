import 'package:flutter/material.dart';
import 'package:melcbank/pages/reset.password.page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../my.constants.dart';
import 'login.page.i18n.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  bool _boolPassVisible = true;
  String _strPassword = "";

  void _togglePasswordState(){
    setState(() {
      _boolPassVisible = !_boolPassVisible;
    });
  }

  void _passwordFail(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  bool _keyboardIsVisible() {
    return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
  }

  void _login(){

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(255, 50, 50, 50),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 64,
                    child: Image.asset("assets/logo.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ready to transfer a lot of money today?".i18n,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      color: Colors.white70,
                      fontSize: MyConstants.of(context).textMedium,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email".i18n,
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: MyConstants.of(context).textLarge,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: MyConstants.of(context).textLarge,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _boolPassVisible,
                    decoration: InputDecoration(
                      labelText: "Password".i18n,
                      suffixIcon: IconButton(
                          icon: _boolPassVisible ? Icon(Icons.lock) : Icon(Icons.lock_open),
                          color: Colors.white,
                          onPressed: () {
                            _togglePasswordState();
                          }
                      ),
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: MyConstants.of(context).textLarge,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    validator: (val) => val.length < 6 ? 'A senha deve conter no mínimo 6 caracteres.' : null,
                    onSaved: (val) => _strPassword = val,
                    style: TextStyle(
                      fontSize: MyConstants.of(context).textLarge,
                      color: Colors.white70,
                    ),
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/reset_password');
                      },
                      child: Text(
                        "Reset password".i18n,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          fontSize: MyConstants.of(context).textMedium,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlineButton(
                    onPressed: _login,
                    child: new Text(
                      "Enter".i18n,
                      style: new TextStyle(
                        fontSize: MyConstants.of(context).textLarge,
                        color: Colors.white70
                      ),
                    ),
                    padding: new EdgeInsets.all(MyConstants.of(context).btnPaddingMedium),
                    borderSide: new BorderSide(
                      color: Colors.white70,
                    ),
                    shape: new ContinuousRectangleBorder(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text(
                        "I want to register on MelcBank!".i18n,
                        textAlign: TextAlign.right,
                        style: new TextStyle(
                          fontSize: MyConstants.of(context).textMedium,
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: _keyboardIsVisible() ? 0 : 60,
              child: Text(
                "MelcBank is a tool designed to make your board game matches more fun and interactive.".i18n,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontSize: MyConstants.of(context).textSmall,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}