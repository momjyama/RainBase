import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

class AmetAddEntry extends StatefulWidget {
  const AmetAddEntry({Key? key}) : super(key: key);

  @override
  _AmetAddEntryState createState() => _AmetAddEntryState();
}

class _AmetAddEntryState extends State<AmetAddEntry> {
  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }


  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  @override
  int amount = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: currentDate.toString()),
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            TextField(
              onChanged: (value) {
                amount = int.parse(value);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Rain in mm"),
            ),
            RaisedButton(
              child: Text('Add'),
              onPressed: () {
                _firestore.collection('Amet').add({
                  'Amount': amount,
                  'Date': currentDate,
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
