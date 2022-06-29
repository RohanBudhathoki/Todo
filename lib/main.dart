// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations
import 'Add.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Contacts",
    home: TODOAPP(),
  ));
}

class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  _TODOAPPState createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  String value = "0";
  var listgarne = [''];

  addtodo(String item) {
    setState(() {
      listgarne.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            addtodo(value);
          },
        ),
        appBar: AppBar(
          title: Text("Contact"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: listgarne.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: "Search"),
                        onChanged: (val) {
                          value = val;
                        },
                      ),
                    )
                  : ListTile(
                      leading: Icon(Icons.work),
                      title: Text('${listgarne[index]}'),
                    );
            }));
  }
  
}
