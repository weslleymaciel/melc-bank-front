import 'package:flutter/material.dart';
import '../my.constants.dart';
import 'reset.password.page.i18n.dart';

class ResetPasswordPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ResetPasswordPageState();
  }
}

class _ResetPasswordPageState extends State<ResetPasswordPage>{

  void _sendEmail(){

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
                      "Oops, it looks like we missed something important!".i18n,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white70,
                        fontSize: MyConstants.of(context).textMedium,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Fill in your registration email and we will send you a link to reset your password.".i18n,
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
                      height: 30,
                    ),
                    OutlineButton(
                      onPressed: _sendEmail,
                      child: new Text(
                        "Send".i18n,
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
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}