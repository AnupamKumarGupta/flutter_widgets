import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home page"),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
            child: ListView(children: [
          Container(
            height: 60,
            color: Colors.red,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Google Calender",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.view_day),
            title: Text("Day"),
          ),
          const ListTile(
            title: Text("Week"),
            leading: Icon(Icons.calendar_view_week),
          ),
          const ListTile(
            title: Text("Month"),
            leading: Icon(Icons.calendar_view_month),
          ),
          Divider(
            color: Colors.black,
          )
        ])));
  }
}
