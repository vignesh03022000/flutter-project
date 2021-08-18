import 'package:app1/WorkOrder/CreateWorkOrder.dart';
import 'package:app1/WorkOrder/ListOfWorkOrder.dart';
import 'package:app1/WorkOrder/UpdateWorkOrder.dart';
import 'package:flutter/material.dart';

class WorkOrderScreen extends StatefulWidget {
  const WorkOrderScreen({Key? key}) : super(key: key);

  @override
  _WorkOrderScreenState createState() => _WorkOrderScreenState();
}

class _WorkOrderScreenState extends State<WorkOrderScreen> {
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
                    backgroundColor: Colors.blue,
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
                        builder: (context) => CreatWorkOrder(),
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
                    backgroundColor: Colors.blue,
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
                        builder: (context) => ListOfWorkOrder(),
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
                    backgroundColor: Colors.blue,
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
                        builder: (context) => UpdateWorkOrder(),
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
