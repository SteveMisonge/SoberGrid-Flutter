import 'package:flutter/material.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 80,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2,
            ),
            Text(
              "Your scheduled \nAppointments",
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Material(
                      color: Color(0xFFF0F0F0),
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(25),
                      child: InkWell(
                        // borderRadius: BorderRadius.circular(25),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: ListTile(
                            trailing: Icon(
                              Icons.access_alarm,
                              color: Color(0xffFBB97C),
                            ),
                            title: Text("Psychologist's name"),
                            subtitle: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date sent"),
                                Text(
                                  "Appointment Details:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                                Text(
                                    "Time: 9:30 a.m"),
                                Text(
                                    "Date: 15/10/2020"),
                                Text(
                                    "Location: Zoom"),
                                Text(
                                    "Type: Online"),
                                Text(
                                    "Details: More details about the meeting")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
