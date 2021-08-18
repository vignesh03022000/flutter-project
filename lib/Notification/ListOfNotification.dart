import 'package:flutter/material.dart';

class ListOfNotification extends StatefulWidget {
  const ListOfNotification({Key? key}) : super(key: key);

  @override
  _ListOfNotificationState createState() => _ListOfNotificationState();
}

class _ListOfNotificationState extends State<ListOfNotification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("List Of Notification"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text(
                "Show the list of notification and give the individual notification"),
          ),
        ),
      ),
    );
  }
}
