import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Calendar"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
            child: ListView(children: [
          Container(
            height: 60,
            //color: Colors.red,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " Google Calendar",
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
          const Divider(
            color: Colors.black,
          )
        ])),
        body: TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime(1900),
            lastDay: DateTime(2050),
            calendarFormat: format,
            onFormatChanged: (CalendarFormat _format) {
              setState(() {
                format = _format;
              });
            },
            onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
              setState(() {
                selectedDay = selectedDay;
                focusedDay = focusedDay;
              });
              print(focusedDay);

            },
            calendarStyle: const CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.lightGreen,
              )
            ),
            ));
  }
}
