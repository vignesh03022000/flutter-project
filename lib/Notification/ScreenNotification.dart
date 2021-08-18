import 'package:app1/Notification/CreateNotification.dart';
import 'package:app1/Notification/ListOfNotification.dart';
import 'package:app1/Notification/UpdateNotification.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              child: SizedBox(
                height: height * 0.09,
                width: width - 180,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'Create Notification',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateNotification(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: SizedBox(
                height: height * 0.09,
                width: width - 180,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'List of Notification',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListOfNotification(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              child: SizedBox(
                height: height * 0.09,
                width: width - 180,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'Update Notification',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateNotification(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
