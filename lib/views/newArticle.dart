import 'package:flutter/material.dart';

class NewArticlePage extends StatefulWidget {
  @override
  _NewArticlePageState createState() => _NewArticlePageState();
}

class _NewArticlePageState extends State<NewArticlePage> {
  String title;
  String body;

  // String index;
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBB97C),
        title: Text("Share your thoughts"),
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        child: ListView(
          children: [
            Material(
              color: Color(0xFFF0F0F0),
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                // borderRadius: BorderRadius.circular(25),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: ListTile(
                    title: Text("Inspire Others"),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Write about lessons you have learn along the path to recovery. Let others learn form you :-)"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Form(
              key: _key,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter title",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      onChanged: (value) {
                        this.title = value;
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
                      maxLines: 19,
                      decoration: InputDecoration(
                        labelText: "body",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22.0),
                          borderSide: BorderSide(),
                        ),
                        //fillColor: Colors.green
                      ),
                      onChanged: (value) {
                        this.body = value;
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
                              Icons.article_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Create Article",
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
