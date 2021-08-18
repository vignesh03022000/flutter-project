import 'package:app1/Navigation/NavigationBar.dart';
import 'package:flutter/material.dart';

class CreatWorkOrder extends StatefulWidget {
  const CreatWorkOrder({Key? key}) : super(key: key);

  @override
  _CreatWorkOrderState createState() => _CreatWorkOrderState();
}

class _CreatWorkOrderState extends State<CreatWorkOrder> {
  TextEditingController Wo_Controller_Notification_type =
      TextEditingController();
  TextEditingController Wo_Controller_Order_type = TextEditingController();
  TextEditingController Wo_Controller_Equipment_type = TextEditingController();
  TextEditingController Wo_Controller_Descripition_type =
      TextEditingController();
  TextEditingController Wo_Controller_Persno_type = TextEditingController();
  TextEditingController Wo_Controller_Duration_Normal_type =
      TextEditingController();
  TextEditingController Wo_Controller_Work_Activity_type =
      TextEditingController();
  TextEditingController Wo_Controller_Short_Text_type = TextEditingController();
  TextEditingController Wo_Controller_Material = TextEditingController();
  TextEditingController Wo_Controller_Requirement_Quantity =
      TextEditingController();
  TextEditingController Wo_Controller_Priority = TextEditingController();
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
          title: Text("Create Work Order"),
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
                      controller: Wo_Controller_Notification_type,
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
                      controller: Wo_Controller_Order_type,
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
                      controller: Wo_Controller_Equipment_type,
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
                      controller: Wo_Controller_Descripition_type,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Wo_Controller_Persno_type,
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
                      controller: Wo_Controller_Duration_Normal_type,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Duration Normal',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Wo_Controller_Work_Activity_type,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Activity',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Wo_Controller_Short_Text_type,
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
                      controller: Wo_Controller_Material,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Material',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Wo_Controller_Requirement_Quantity,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Requirement Quantity',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: Wo_Controller_Priority,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Priority',
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
                            'Create Work Order',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          onPressed: () {
                            showAlertDialog(context);

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
    title: Text("Work Order"),
    content: Text("Are you what to Create the work Order"),
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
