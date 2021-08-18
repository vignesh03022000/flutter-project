import 'package:app1/LoginPage.dart';
import 'package:flutter/material.dart';

class SignOutScreen extends StatefulWidget {
  const SignOutScreen({Key? key}) : super(key: key);

  @override
  _SignOutScreenState createState() => _SignOutScreenState();
}

class _SignOutScreenState extends State<SignOutScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Container(
          child: SizedBox(
            height: height * 0.08,
            width: width - 70,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: Text(
                'Back',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
