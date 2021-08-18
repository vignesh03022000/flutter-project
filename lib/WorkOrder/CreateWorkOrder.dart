import 'package:flutter/material.dart';

class CreatWorkOrder extends StatefulWidget {
  const CreatWorkOrder({Key? key}) : super(key: key);

  @override
  _CreatWorkOrderState createState() => _CreatWorkOrderState();
}

class _CreatWorkOrderState extends State<CreatWorkOrder> {
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
          title: Text("Create Work Order"),
          // centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text("Create Work Order"),
          ),
        ),
      ),
    );
  }
}
