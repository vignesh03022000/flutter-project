import 'package:flutter/material.dart';

class CreateNotification extends StatefulWidget {
  const CreateNotification({Key? key}) : super(key: key);

  @override
  _CreateNotificationState createState() => _CreateNotificationState();
}

class _CreateNotificationState extends State<CreateNotification> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _Controller_Notification = TextEditingController();
    TextEditingController _Controller_Header = TextEditingController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Create Notification"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: _Controller_Notification,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification Type',
                      hintText: 'Notification Type'),
                  style: TextStyle(),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: _Controller_Header,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification Header',
                      hintText: 'Notification Header'),
                  style: TextStyle(),
                ),
              ),
              Center(
                child: Container(
                  child: SizedBox(
                    height: height * 0.09,
                    width: width - 350,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: Text(
                        'Create Notification',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => CreateNotification(),
                        //   ),
                        // );

                        String Api_notification_type =
                            _Controller_Notification.text;
                        String api_notification_header =
                            _Controller_Header.text;
                        print(Api_notification_type);
                        print(api_notification_header);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
