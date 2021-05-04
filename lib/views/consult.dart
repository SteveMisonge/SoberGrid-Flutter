import 'package:flutter/material.dart';

class ConsultPage extends StatefulWidget {
  @override
  _ConsultPageState createState() => _ConsultPageState();
}

class _ConsultPageState extends State<ConsultPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffF69383),
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(
                color: Colors.black87
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF69383),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only( left: 30),
                      child: Text("Consult",
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.8),
                              fontSize: 28,
                              fontWeight: FontWeight.w600)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Text("Speak to one of our highly trained psychiatrists.",
                          style: TextStyle(
                              color: Colors.black38.withOpacity(0.8),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text("Our psychiatrists",
                style: TextStyle(
                    color: Colors.black38.withOpacity(0.8),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ListView(
                    children: [
                      Material(
                        color: Color(0xFFF0F0F0),
                        clipBehavior: Clip.antiAlias,
                        borderRadius: BorderRadius.circular(25),
                        child: InkWell(
                          // borderRadius: BorderRadius.circular(25),
                          onTap: () {
                            // Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/requestAppointment');
                          },
                          child: ListTile(
                            trailing: Icon(Icons.arrow_forward_ios_outlined, color: Color(0xffFBB97C),),
                            title: Text("Dr.Jackson Black"),
                            subtitle: Text("Psychologist"),
                          ),
                        ),
                      ),
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
