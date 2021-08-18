import 'package:flutter/material.dart';

class UpdateNotification extends StatefulWidget {
  const UpdateNotification({Key? key}) : super(key: key);

  @override
  _UpdateNotificationState createState() => _UpdateNotificationState();
}

class _UpdateNotificationState extends State<UpdateNotification> {
  @override
  void initState() {
    super.initState();
    Controller_Start_Malfunction_Time =
        new TextEditingController(text: "00:00:00");
    Controller_Request_Start_Time = new TextEditingController(text: "00:00:00");
    Controller_Request_End_Time = new TextEditingController(text: "00:00:00");
  }

//all the controller
  TextEditingController controller_plant_group = TextEditingController();
  TextEditingController controller_planning_plant = TextEditingController();
  TextEditingController controller_notification_Type = TextEditingController();
  TextEditingController Controller_Equipment_ID = TextEditingController();
  TextEditingController Controller_Functional_Location =
      TextEditingController();
  TextEditingController Controller_Description = TextEditingController();
  TextEditingController Controller_Priority = TextEditingController();
  TextEditingController Controller_Start_Malfunction_Date =
      TextEditingController();
  TextEditingController Controller_Start_Malfunction_Time =
      TextEditingController();
  TextEditingController Controller_Request_Start_Date = TextEditingController();
  TextEditingController Controller_Request_Start_Time = TextEditingController();
  TextEditingController Controller_Request_End_Date = TextEditingController();
  TextEditingController Controller_Request_End_Time = TextEditingController();
  TextEditingController Controller_Report_by = TextEditingController();
  TextEditingController Controller_Notification_head = TextEditingController();
  TextEditingController requestdatecontroller = TextEditingController();

  //start malfunction start date picker
  DateTime startselectedDate = DateTime.now();
  Future<void> startselectDate(BuildContext context) async {
    final DateTime? startpicked = await showDatePicker(
        context: context,
        initialDate: startselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Start_Malfunction_Date.text =
        startpicked.toString().substring(0, 10);

    if (startpicked != null && startpicked != startselectedDate)
      setState(() {
        startselectedDate = startpicked;
      });
  }
  //request start date picker

  DateTime requeststartselectedDate = DateTime.now();
  Future<void> requeststartselectDate(BuildContext context) async {
    final DateTime? requeststartpicked = await showDatePicker(
        context: context,
        initialDate: startselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Request_Start_Date.text =
        requeststartpicked.toString().substring(0, 10);

    if (requeststartpicked != null && requeststartpicked != startselectedDate)
      setState(() {
        requeststartselectedDate = requeststartpicked;
      });
  }

  //request end date
  DateTime requestendselectedDate = DateTime.now();
  Future<void> requestendselectDate(BuildContext context) async {
    final DateTime? requestendpicked = await showDatePicker(
        context: context,
        initialDate: requestendselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Request_End_Date.text =
        requestendpicked.toString().substring(0, 10);

    if (requestendpicked != null && requestendpicked != startselectedDate)
      setState(() {
        requestendselectedDate = requestendpicked;
      });
  }

  @override
  Widget build(BuildContext context) {
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
                    controller: controller_plant_group,
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
                    controller: controller_planning_plant,
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
                    controller: controller_notification_Type,
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
                    controller: Controller_Equipment_ID,
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
                    controller: Controller_Functional_Location,
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
                    controller: Controller_Description,
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
                    controller: Controller_Priority,
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
                    onTap: () => startselectDate(context),
                    controller: Controller_Start_Malfunction_Date,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Start Malfunction Date',
                      hintText: (startselectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    // onTap: () => requeststartselectDate(context),
                    controller: Controller_Start_Malfunction_Time,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Start Malfunction Time',
                      // hintText:
                      //     (requeststartselectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    onTap: () => requeststartselectDate(context),
                    controller: Controller_Request_Start_Date,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Request Start Date',
                      hintText:
                          (requestendselectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    // onTap: () => _selectDate(context),
                    controller: Controller_Request_Start_Time,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Request Start Time',
                      // hintText: (selectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    onTap: () => requestendselectDate(context),
                    controller: Controller_Request_End_Date,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Request End Date',
                      hintText:
                          (requestendselectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    // onTap: () => _selectDate(context),
                    controller: Controller_Request_End_Time,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Request End Time',
                      // hintText: (selectedDate.toString().split(' ')[0]),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: Controller_Report_by,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Reported By',
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  margin: EdgeInsets.all(18),
                  child: TextField(
                    controller: Controller_Notification_head,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification Header',
                    ),
                  ),
                ),
                // Text("${selectedDate.toLocal()}".split(' ')[0]),
                // SizedBox(
                //   height: 20.0,
                // ),
                // RaisedButton(
                //   onPressed: () => _selectDate(context),
                //   child: Text('Select date'),
                // ),
                // Text("${pickedDate.year}"),
                Center(
                  child: Container(
                    child: SizedBox(
                      height: height * 0.09,
                      width: width - 350,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey[800],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          'Update Notification',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {
                          print(controller_plant_group.text);
                          print(controller_planning_plant.text);

                          print(controller_notification_Type.text);
                          print(Controller_Equipment_ID.text);
                          print(Controller_Functional_Location.text);
                          print(Controller_Description.text);
                          print(Controller_Priority.text);
                          print(Controller_Start_Malfunction_Date.text);
                          print(Controller_Start_Malfunction_Time.text);
                          print(Controller_Request_Start_Date.text);
                          print(Controller_Request_Start_Time.text);
                          print(Controller_Request_End_Date.text);
                          print(Controller_Request_End_Time.text);
                          print(Controller_Report_by.text);
                          print(Controller_Notification_head.text);

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => CreateNotification(),
                          //   ),
                          // );
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
