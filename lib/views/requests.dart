import 'package:flutter/material.dart';

class RequestsPage extends StatefulWidget {
  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
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
              "Your Appointment \nRequests",
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
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFF0F0F0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            ListTile(
                              trailing: Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xffFBB97C),
                              ),
                              title: Text("Client's name"),
                              subtitle: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date sent"),
                                  Text(
                                    "Request Details:",
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
                            Material (
                              color: Color(0xffFBB97C),
                              clipBehavior: Clip.antiAlias,
                              borderRadius: BorderRadius.circular(25),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/newAppointment');
                                },
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 10),
                                    child: Text("Fulfill request"),
                                  ),
                                ),
                              ),
                            )
                          ],
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
