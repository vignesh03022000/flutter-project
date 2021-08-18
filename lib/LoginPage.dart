import 'package:app1/Navigation/NavigationBar.dart';
import 'package:flutter/material.dart';
// import 'HomePage.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String _email = '', _password = '';
  // void sigIn() async {
  //   await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email: _email, password: _password)
  //       .catchError((onError) {
  //     print(onError);
  //   }).then((authUser) {
  //     // print(authUser.user!.uid);
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => HomePage(),
  //       ),
  //     );
  //   });
  // }

  void sigIn(e) {
    if (e == "1") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationBar(),
        ),
      );
    } else {
      print("Invaild");
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/3.png',
                        height: height * 0.59, width: width, fit: BoxFit.cover),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email Id',
                            labelStyle: TextStyle(fontSize: 16)),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _email = value.toString();
                        },
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      margin: EdgeInsets.only(left: 10, top: 4),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_open),
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 16)),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value.toString();
                        },
                      )),
                  Center(
                      child: Container(
                          margin: EdgeInsets.only(top: 12),
                          child: SizedBox(
                            height: height * 0.08,
                            width: width - 30,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  sigIn(_email);

                                  // print(_email);
                                  // print(_password);
                                  // if (_email == '1' && _password == '1') {
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => HomePage(),
                                  //     ),
                                  //   );
                                  //   FocusScope.of(context).unfocus();
                                  //   print('Go to neext page');
                                  // } else {
                                  //   print("Invalid");
                                  // }
                                }
                              },
                              child: const Text('Login'),
                            ),

                            // child: FlatButton(
                            //   color: Colors.black,
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius:
                            //           BorderRadius.all(Radius.circular(30))),
                            //   onPressed: () {},
                            //   child: Text(
                            //     'login',
                            //     style:
                            //         TextStyle(fontSize: 20, color: Colors.white),
                            //   ),
                            // )
                          )))
                ],
              ),
            ),
          ),
        ));
  }
}
