import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SoberGrid",
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed('/');
                },
                child: ListTile(
                  leading: Icon(Icons.home, color: Color(0xffFBB97C),),
                  title: Text("Home"),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/profile');
                },
                child: ListTile(
                  leading: Icon(Icons.person, color: Color(0xffFBB97C),),
                  title: Text("Profile"),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/schedule');
                },
                child: ListTile(
                  leading: Icon(Icons.alarm, color: Color(0xffFBB97C),),
                  title: Text("Schedule"),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/messages');
                },
                child:               ListTile(
                  leading: Icon(Icons.mail_rounded, color: Color(0xffFBB97C),),
                  title: Text("Requests"),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/appointments');
                },
                child: ListTile(
                  leading: Icon(Icons.work_outline, color: Color(0xffFBB97C),),
                  title: Text("Appointments"),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/addPsychologist');
                },
                child: ListTile(
                  leading: Icon(Icons.add_box_outlined, color: Color(0xffFBB97C),),
                  title: Text("Add Psychologist"),
                ),
              ),
              Divider(),
              TextButton(onPressed: () {}, child: Text("Logout",)),
              Divider(),
            ],
          ),
        ) // Populate the Drawer in the next step.
    );
  }
}
