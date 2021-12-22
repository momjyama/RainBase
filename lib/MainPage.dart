import 'package:flutter/material.dart';
import 'Amet.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Rain Base"),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Amet();
                      },
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Text('Amet'),
                  ),
                ),
              ),
              Card(child: ListTile(title: Text('Bhim'))),
              Card(child: ListTile(title: Text('Deogarh'))),
              Card(child: ListTile(title: Text('Kumbhalgarh'))),
              Card(child: ListTile(title: Text('Nathdwara'))),
              Card(child: ListTile(title: Text('Railmagra'))),
              Card(child: ListTile(title: Text('Rajsamand'))),
            ],
          ),
        ));
  }
}
