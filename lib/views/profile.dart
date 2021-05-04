import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Profile", style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/doctor_pic.png"),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(height: 20),
              Text(
                'Jack Daniel',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Anchorage, Alaska',
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
              SizedBox(height: 10),
              MaterialButton(onPressed: () {}, color: Color(0xffFBB97C), child: Container(

                child: Text("Check in"),
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Date Joined:", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 10,),
                    Text("17/7/2020")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
