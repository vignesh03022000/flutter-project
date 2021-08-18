import 'package:flutter/material.dart';

class ListOfWorkOrder extends StatefulWidget {
  const ListOfWorkOrder({Key? key}) : super(key: key);

  @override
  _ListOfWorkOrderState createState() => _ListOfWorkOrderState();
}

class _ListOfWorkOrderState extends State<ListOfWorkOrder> {
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
          title: Text("List of Work Order"),
          // centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Text("List of work Order"),
          ),
        ),
      ),
    );
  }
}
