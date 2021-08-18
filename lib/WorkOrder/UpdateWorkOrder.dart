import 'package:app1/Navigation/NavigationBar.dart';
import 'package:flutter/material.dart';

class UpdateWorkOrder extends StatefulWidget {
  const UpdateWorkOrder({Key? key}) : super(key: key);

  @override
  _UpdateWorkOrderState createState() => _UpdateWorkOrderState();
}

class _UpdateWorkOrderState extends State<UpdateWorkOrder> {
  TextEditingController controllerworkorder = TextEditingController();
  TextEditingController controllerOrderType = TextEditingController();
  TextEditingController controllerNotificationNumber = TextEditingController();
  TextEditingController controllerNotificationType = TextEditingController();
  TextEditingController controllerOpndesc = TextEditingController();
  TextEditingController controllerPersno = TextEditingController();
  TextEditingController controllerEquipment = TextEditingController();
  TextEditingController controllerPriority = TextEditingController();
  TextEditingController controllerShortText = TextEditingController();
  TextEditingController controllerDuration = TextEditingController();
  TextEditingController controllerReserve = TextEditingController();
  TextEditingController controllerMaterialQuality = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Update Work Order"),
          // centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
                child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerworkorder,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Work Order',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerOrderType,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Order Type',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerNotificationNumber,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification No',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerNotificationType,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Notification Type',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerOpndesc,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Opndesc',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerPersno,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Persno',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerEquipment,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Equipment',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerPriority,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Priority',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerShortText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Short Text',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerDuration,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Duration',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerReserve,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Reserve',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    controller: controllerMaterialQuality,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Material Quality',
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: SizedBox(
                      height: height * 0.09,
                      width: width - 350,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          'Update Work Order',
                          style: TextStyle(fontSize: 15.0),
                        ),
                        onPressed: () {
                          showAlertDialog(context);
                          print(controllerworkorder.text);
                          print(controllerOrderType.text);

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
            )),
          ),
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  Widget yesButton = TextButton(
    child: Text("Yes"),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationBar(),
        ),
      );
    },
  );
  Widget nobutton = TextButton(
    child: Text("No"),
    onPressed: () {
      Navigator.of(context).pop();
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => CreateNotification(),
      //   ),
      // );
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Update"),
    content: Text("Are you what to Update the work Order"),
    actions: [
      nobutton,
      yesButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void send(one, two) {
  print(one);
  print(two);
}
