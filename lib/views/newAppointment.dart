import 'package:flutter/material.dart';

class NewAppointmentPage extends StatefulWidget {
  @override
  _NewAppointmentPageState createState() => _NewAppointmentPageState();
}

class _NewAppointmentPageState extends State<NewAppointmentPage> {

  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String location;
  String type;
  String details;
  String date;
  String time;
  // String index;
  GlobalKey<FormState> _key = GlobalKey<FormState>();

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
              "Schedule an \nAppointment",
              style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 28,
                  fontWeight: FontWeight.w600),
            ),
            Expanded(
              child: ListView(
                children: [
                  Form(
                    key: _key,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter Your First Name",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.firstName = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter Your Last Name",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.lastName = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Enter Phone Number",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.phoneNumber = value;
                              // this.index = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "email",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.email = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Date",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.date = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Time",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.time = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              labelText: "Meeting type: online/physical",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.type = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              labelText: "Meeting location",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.location = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.multiline,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            maxLines: 5,
                            decoration: InputDecoration(
                              labelText: "Meeting details",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                            onChanged: (value) {
                              this.details = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return "Field cannot be empty";
                              return null;
                            },
                            keyboardType: TextInputType.multiline,
                            style: new TextStyle(
                              fontFamily: "Montserrat",
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              if (_key.currentState.validate()) {
                                print("valid submission");
                                // try {
                                //   await
                                //   FireStoreService().addFarmerReport(FarmerReport(
                                //       firstName: firstName,
                                //       lastName: lastName,
                                //       phoneNumber: phoneNumber,
                                //       outbreakLocation: outbreakLocation,
                                //       animalOrCrop: animalOrCrop,
                                //       diseaseOrPest: diseaseOrPest,
                                //       symptoms: symptoms,
                                //       index: splitNumber(index)
                                //   ));
                                //   Navigator.pop(context);
                                // } catch (e) {
                                //   print(e);
                                // }

                              }
                            },
                            color: Color(0xffF69383),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.calendar_today_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "Create Appointment",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                )
                              ],
                            ),
                          )
                        ],
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
