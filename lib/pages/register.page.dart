import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import '../my.constants.dart';
import 'register.page.i18n.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  static final List<String> _dropdownItems = <String>["Female", "Male", "Other"];
  final formKey = new GlobalKey<FormState>();

  String _dropdownValue = "Female";

  DateTime _selectedDate =  DateTime.now();
  TextEditingController _datecontroller = new TextEditingController();

  bool _boolPassVisible = true;
  String _strPassword = "";

  void _togglePasswordState(){
    setState(() {
      _boolPassVisible = !_boolPassVisible;
    });
  }
  
  void _register(){
  }

  void _getDate(){
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(1920, 1, 1),
        maxTime: DateTime(2099, 1, 1),
        onChanged: (date) {
          _selectedDate = date;
          DateFormat  dateFormat = new DateFormat.yMd();
          _datecontroller.text = dateFormat.format(date);
        }, onConfirm: (date) {
          _selectedDate = date;
          DateFormat  dateFormat = new DateFormat.yMd();
          _datecontroller.text = dateFormat.format(date);
        });
  }

  Widget _buildGender() {
    return FormField(
      builder: (FormFieldState state) {
        return DropdownButtonHideUnderline(
          child: new Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Color.fromARGB(255, 50, 50, 50),
            ),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new InputDecorator(
                  decoration: InputDecoration(
                    filled: false,
                    hintText: "Choose your gender".i18n,
                    labelText: "Gender".i18n,
                    labelStyle: new TextStyle(
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
                  isEmpty: _dropdownValue == null,
                  child: new DropdownButton<String>(
                    value: _dropdownValue,
                    isDense: true,
                    onChanged: (String newValue) {
                      setState(() {
                        _dropdownValue = newValue;
                      });
                    },
                    items: _dropdownItems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value.i18n,
                          style: new TextStyle(
                            fontSize: MyConstants.of(context).textLarge,
                            color: Colors.white70,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          )
        );
      },
    );
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
                      "We are almost there!".i18n,
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
                        labelText: "Name".i18n,
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
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Last name".i18n,
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
                      focusNode: AlwaysDisabledFocusNode(),
                      controller: _datecontroller,
                      onTap: _getDate,
                      decoration: InputDecoration(
                        labelText: "Date of birth".i18n,
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
                    _buildGender(),
                    SizedBox(
                      height: 10,
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
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _boolPassVisible,
                      decoration: InputDecoration(
                        labelText: "Repeat password".i18n,
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
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "The information collected will be used only to improve your experience with MelcBank. No personal data is provided to third parties.".i18n,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white70,
                        fontSize: MyConstants.of(context).textMedium,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OutlineButton(
                      onPressed: _register,
                      child: new Text(
                        "Register".i18n,
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

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}