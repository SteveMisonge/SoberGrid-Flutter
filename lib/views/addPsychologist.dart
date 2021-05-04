import 'package:flutter/material.dart';

class AddPsychologistPage extends StatefulWidget {
  @override
  _AddPsychologistPageState createState() => _AddPsychologistPageState();
}

class _AddPsychologistPageState extends State<AddPsychologistPage> {

  String firstName;
  String lastName;
  String email;
  String location;
  String phoneNumber;
  String symptoms;
  String address;
  String availability;
  // String index;
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBB97C),
        // elevation: 0.0,
        title: Text("Add a Psychiatrist", style: TextStyle(color: Colors.black),),
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
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
                        labelText: "Location",
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
                        labelText: "Address",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      onChanged: (value) {
                        this.address = value;
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
                        labelText: "Availability",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      onChanged: (value) {
                        this.availability = value;
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
                      color: Color(0xffFBB97C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.person_add_alt,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Create record",
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
      ),
    );
  }
}
