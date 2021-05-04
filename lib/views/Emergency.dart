import 'package:flutter/material.dart';

class EmergencyPage extends StatefulWidget {
  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffEACBCB),
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black87),
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffEACBCB),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Emergency Contacts",
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Text(
                          "Essential contacts where you can get help in case of an emergency",
                          style: TextStyle(
                              color: Colors.black38.withOpacity(0.8),
                              fontSize: 20,
                              fontWeight: FontWeight.w300)),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ListView(
                    children: [
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
                                  Icons.phone_enabled_outlined,
                                  color: Color(0xffFBB97C),
                                ),
                                title: Text("NACADA's Free Helpline"),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact: 1192"),
                                    Text(
                                      "Services:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                        "Counseling and Referrals \nIncident Reporting.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                  Icons.phone_enabled_outlined,
                                  color: Color(0xffFBB97C),
                                ),
                                title:
                                    Text("Befrienders Kenya Suicide Helpline"),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact: 0736 542 304/0722 178 177"),
                                    Text(
                                      "Services:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                        "Befrienders Kenya is a charitable organization that focuses on suicide preventions. They offer emotional support to those who may be in distress and in danger of committing suicide.")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
                                  Icons.phone_enabled_outlined,
                                  color: Color(0xffFBB97C),
                                ),
                                title: Text("One2One Youth Hotline"),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Contact: 1190 "),
                                    Text(
                                      "Services:",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline),
                                    ),
                                    Text(
                                        "One2One Hotline provides a unique sexual health and HIV hotline for youth in Kenya.One2One is confidential and anonymous. ")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
