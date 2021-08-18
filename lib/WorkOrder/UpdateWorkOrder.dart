import 'package:flutter/material.dart';

class UpdateWorkOrder extends StatefulWidget {
  const UpdateWorkOrder({Key? key}) : super(key: key);

  @override
  _UpdateWorkOrderState createState() => _UpdateWorkOrderState();
}

class _UpdateWorkOrderState extends State<UpdateWorkOrder> {
  @override
  Widget build(BuildContext context) {
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
          child: Container(
            child: Text("Update Work Order"),
          ),
        ),
      ),
    );
  }
}
