import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter_school/parentspage.dart';

import 'package:flutter_school/teacherpage.dart';

import 'package:flutter_school/adminpage.dart';

import 'package:otp/otp.dart';

//import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  final String logo;

  LoginPage({this.logo});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//
//  String phoneNo;
//  String smsCode;
//  String verificationId;
//
//  Future<void> verifyPhone() async{
//
//    final PhoneCodeAutoRetrievalTimeout autoRetrieve =(String verId) {
//      this.verificationId = verId;
//    };
//
//    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]){
//      this.verificationId = verId;
//    };
//
//    await FirebaseAuth.instance.verifyPhoneNumber(
//      phoneNumber: this.phoneNo,
//      codeAutoRetrievalTimeout: autoRetrieve,
//      codeSent: smsCodeSent,
//      timeout: const Duration(seconds: 5),
//      verificationCompleted:  (AuthCredential phoneAuthCredential) {
//        print(phoneAuthCredential);
//      },
//      verificationFailed: (AuthException exceptio) {
//        print('${exceptio.message}');
//      }
//    );
//  }
//
//  Future<bool> smsCodeDialog(BuildContext context){
//    return showDialog(
//      context: context,
//      barrierDismissible: false,
//      builder: (BuildContext contexkkt){
//        return AlertDialog(
//          title: Text('Enter sms Code'),
//          content: TextField(
//            onChanged: (value){
//              this.smsCode = value;
//            },
//          ),
//          contentPadding: EdgeInsets.all(10.0),
//          actions: <Widget>[
//            FlatButton(
//              child: Text('Done'),
//              onPressed: (){
//                FirebaseAuth.instance.currentUser().then((user){
//                  if(user!=null){
//                    Navigator.of(context).pop();
//                    Navigator.of(context).pushReplacementNamed('ParentsPage()');
//                  }else{
//                    Navigator.of(context).pop();
//                  }
//                });
//              },
//            )
//          ],
//        );
//      }
//    );
//  }
//
//  signIn() {
//    FirebaseAuth.instance.ger
//  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  var _loginName = ['--Select--', 'Admin', 'Teacher', 'Parents'];

  final _minpadding = 5.0;

  var _currentItemSelected = '--Select--';

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController pswdController = TextEditingController();

  TextEditingController otpController = TextEditingController();

  // ignore: unused_field
  String _password;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    this.fetchadmin();
    this.fetchPost();

    // cekLogin();
  }

//  Future cekLogin() async {

//    SharedPreferences pref = await SharedPreferences.getInstance();

//    if (pref.getBool('isLogin')) {

//      Navigator.of(context).pushAndRemoveUntil(

//          new MaterialPageRoute(

//              builder: (BuildContext context) => new LoginPage()),

//          (Route<dynamic> route) => false);

//    }

//  }
  var data, item;

  var code = OTP.generateTOTPCode(
      "JBSWY3DPEHPK3PXP", DateTime.now().millisecondsSinceEpoch);

  // ignore: missing_return
  Future<String> fetchPost() async {
    final response = await http.post(
        Uri.encodeFull('http://apps.triz.co.in/app_check_mobile.php'),
        body: {"mobile_number": "9033456707"});
    print(response.body);

    setState(() {
      var dataToJson = json.decode(response.body);

      data = dataToJson['status_code'];
      print(data);
      print(code);
    });
    if (data == 1) {
      print('Valid');
      build(context);
    } else {
      print('Invalid');
    }
  }

  // ignore: missing_return
  Future<String> fetchadmin() async {
    final res = await http.post(Uri.encodeFull('http://202.47.117.124/login'),
        body: {"email": "admin@mlzs.com", "password": "123456", "type": "API"});
    print(res.body);

    setState(() {
      var dataToJson = json.decode(res.body);

      item = dataToJson['data'];

      print(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Padding(
            padding: EdgeInsets.all(_minpadding * 7),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Image.network(widget.logo, height: 90.0, width: 90.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: _minpadding * 18),
                  child: FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                            prefixIcon: Icon(Icons.perm_identity),
                            hintText: 'Login As',
                            labelText: 'Login As'),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isDense: true,
                            items: _loginName.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            value: _currentItemSelected,
                            onChanged: (String newValueSelected) {
                              _onDropDownItemSelected(newValueSelected);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (this._currentItemSelected == 'Parents')
                  Padding(
                    padding: EdgeInsets.only(top: _minpadding * 3),
                    child: TextFormField(
                      controller: phoneController,

                      keyboardType: TextInputType.number,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Enter Your Mobile Number',
                        labelText: 'Mobile Number',
                      ),
//                      onChanged: (value){
//                        this.phoneNo = value;
//                      },

                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Mobile Number';
                          // ignore: missing_return
                        } else if (value.length != 10) {
                          return 'Invalid Phone Number';
                        }
                      },
                    ),
                  ),
                if (this._currentItemSelected != 'Parents')
                  Padding(
                    padding: EdgeInsets.only(top: _minpadding * 3),
                    child: TextFormField(
                      controller: emailController,

                      keyboardType: TextInputType.emailAddress,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter Your Email ID',
                        labelText: 'Email id',
                      ),
//                      onChanged: (value){
//                        this.phoneNo = value;
//                      },

                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter email id';
                        }
                        // ignore: missing_return
//                         else if (value.length != 10) {
//                          return 'Invalid Email id';
//                        }
                      },
                    ),
                  ),
                if (this._currentItemSelected != 'Parents')
                  Padding(
                    padding: EdgeInsets.only(top: _minpadding * 3),
                    child: TextFormField(
                      controller: pswdController,

                      obscureText: true,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                      ),

                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Password';
                        } else if (value.length < 6) {
                          return 'Invalid Password';
                        }
                      },

                      onSaved: (value) => _password = value,
                    ),
                  ),
                if (this._currentItemSelected == 'Parents')
                  Padding(
                      padding: EdgeInsets.only(top: _minpadding * 3),
                      child: Container(
                        margin: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: Theme.of(context).accentColor,
                            textColor: Theme.of(context).primaryColorDark,
                            child: const Text(
                              'Get OTP',
                              style: TextStyle(color: Colors.white),
                            ),
                            splashColor: Colors.redAccent,
                            onPressed: () {
                              if (this.phoneController.text == '9033456707') {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    child: AlertDialog(
                                      title: Text('User not found'),
                                      content: Form(
                                        key: _form,
                                        autovalidate: true,
                                        child: TextFormField(
                                          controller: otpController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'Enter Your OTP',
                                          ),
                                          // ignore: missing_return
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return 'Please Enter otp';
                                            }
                                            // ignore: missing_return
//                                          } else if (value.length != 6) {
//                                            return 'Invalid otp';
//                                          }
                                          },
                                        ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: Text('Cancel'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                        FlatButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              if (_form.currentState
                                                  .validate()) {
                                                if (this.otpController.text ==
                                                    code.toString()) {
                                                  var route = MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        ParentsPage(),
                                                  );
                                                  Navigator.of(context)
                                                      .push(route);
                                                  print('correct data');
                                                } else if (this
                                                        .otpController
                                                        .text !=
                                                    code.toString()) {
                                                  final snackBar = SnackBar(
                                                    content: Text(
                                                        'Yay! A SnackBar!'),
                                                    action: SnackBarAction(
                                                      label: 'Undo',
                                                      onPressed: () {
                                                        // Some code to undo the change.
                                                      },
                                                    ),
                                                  );

                                                  // Find the Scaffold in the widget tree and use
                                                  // it to show a SnackBar.
                                                  Scaffold.of(context)
                                                      .showSnackBar(snackBar);
                                                }
                                              }
                                            }),
                                      ],
                                    ));
//                                var route = MaterialPageRoute(
//                                  builder: (BuildContext context) =>
//                                      ParentsPage(),
//                                );
//                                Navigator.of(context).push(route);
//                                print('correct data');
                              } else {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    child: new AlertDialog(
                                      title: Text('User not found'),
                                      content: new Text(
                                        "Please! Enter valid data",
                                        style: new TextStyle(fontSize: 16.0),
                                      ),
                                      actions: <Widget>[
                                        new FlatButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: new Text("OK"))
                                      ],
                                    ));
                                print('Incorrect data');
                              }
                            }),
                      )),
                if (this._currentItemSelected != 'Parents')
                  Padding(
                      padding: EdgeInsets.only(top: _minpadding * 3),
                      child: Container(
                        margin: EdgeInsets.only(left: 100.0, right: 100.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          color: Theme.of(context).accentColor,
                          textColor: Theme.of(context).primaryColorDark,
                          child: const Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                          splashColor: Colors.redAccent,
                          onPressed: () {
                            if (_currentItemSelected == 'Teacher') {
                              if (_formKey.currentState.validate()) {
//                                SharedPreferences pref = await SharedPreferences.getInstance();

//                                pref.setBool('isLogin', true);

                                var route = MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      TeacherPage(),
                                );

                                Navigator.of(context).push(route);
                              }
                            } else if (_currentItemSelected == 'Admin') {
                              if (_formKey.currentState.validate()) {
//                                SharedPreferences pref = await SharedPreferences.getInstance();

//                                pref.setBool('isLogin', true);
                                if (this.emailController.text ==
                                        item['email'] &&
                                    this.pswdController.text ==
                                        item['password']) {
                                  var route = MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        AdminPage(
                                            img: item['image'],
                                            suf: item['name_suffix'],
                                            fn: item['first_name'],
                                            mn: item['middle_name'],
                                            ln: item['last_name'],
                                            eml: item['email'],
                                            mob: item['mobile'],
                                            gen: item['gender'],
                                            dob: item['birthdate'],
                                            add: item['address'],
                                            city: item['city'],
                                            state: item['state'],
                                            pin: item['pincode'],
                                            doj: item['join_year']),
                                  );

                                  Navigator.of(context).push(route);
                                }
                              }
                            }
//                            else if (_currentItemSelected == 'Parents') {
//                              if (_formKey.currentState.validate()) {
////                                SharedPreferences pref = await SharedPreferences.getInstance();
//
////                                  pref.setBool('isLogin', true);
//
//                                var route = MaterialPageRoute(
//                                  builder: (BuildContext context) =>
//                                      ParentsPage(),
//                                );
//
//                                Navigator.of(context).push(route);
//                              }
                            else {
//                              SharedPreferences pref = await SharedPreferences.getInstance();

//                              pref.setBool("isLogin", false);

                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  child: new AlertDialog(
                                    title: Text('Select'),
                                    content: new Text(
                                      "please select Your school",
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                    actions: <Widget>[
                                      new FlatButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: new Text("OK"))
                                    ],
                                  ));
                            }
                          },
                        ),
                      )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
