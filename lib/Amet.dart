import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AmetAddEntry.dart';
import 'AmetViewEntry.dart';

class Amet extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Amet"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AmetAddEntry();
                        },
                      ),
                    );
                  },
                  child: const Text('Add Entry'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AmetViewEntry();
                        },
                      ),
                    );
                  },
                  child: const Text('View Entry'),
                ),
              ],
            ),
          ),
        ));
  }
}
