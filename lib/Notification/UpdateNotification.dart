import 'package:flutter/material.dart';

class UpdateNotification extends StatefulWidget {
  const UpdateNotification({Key? key}) : super(key: key);

  @override
  _UpdateNotificationState createState() => _UpdateNotificationState();
}

class _UpdateNotificationState extends State<UpdateNotification> {
  TextEditingController datecontroller = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
          title: Text("Update Notification"),
          // centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Notification,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Planner Group',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Planning Plant',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification Type',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Equipment ID',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Functional Location',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: _Controller_Header,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Priority',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    onTap: () => _selectDate(context),

                    // controller: datecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Start Date',
                      hintText: (selectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Select date'),
                ),
                // Text("${pickedDate.year}"),
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
      ),
    );
  }
}
