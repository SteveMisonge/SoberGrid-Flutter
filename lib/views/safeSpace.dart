import 'package:flutter/material.dart';
import 'package:sober_grid/views/newArticle.dart';

class SafeSpacePage extends StatefulWidget {
  @override
  _SafeSpacePageState createState() => _SafeSpacePageState();
}

class _SafeSpacePageState extends State<SafeSpacePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFBB97C),
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(color: Colors.black87),
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffFBB97C),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only( left: 30),
                      child: Text("My Space",
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.8),
                              fontSize: 28,
                              fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 30),
                      child: Text(
                          "Get motivated by reading what others have to say.",
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
                        padding: EdgeInsets.only(top: 5, bottom: 20),
                        child: Container(
                          // height: 300,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            elevation: 4.0,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(6),
                                                topRight: Radius.circular(6),
                                                bottomRight: Radius.circular(6),
                                                bottomLeft: Radius.circular(6),
                                              ),
                                              child: Image.asset(
                                                "assets/motivation1.jpeg",
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("One's Choice",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                                Text("10/9/2020",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey
                                                  ),
                                                  textAlign: TextAlign.left,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(Icons.more_vert_outlined)
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 5,
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: Text(
                                        "Author: Jackson",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, right: 12),
                                    child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        child: Text(
                                          "It Does Not Matter How Slowly You Go As Long As You Do Not Stop. The Goal Isn’t To Be Sober. The Goal Is To Love Yourself So Much That You Don’t Need To Drink.",
                                        )),
                                  ),
                                   Divider(
                                    color: Colors.grey,
                                    height: 20,
                                    thickness: 0,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                           left: 12, right: 12, bottom: 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.share_outlined
                                        )
                                      ],
                                    ),
                                  ),
                                ],
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
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NewArticlePage()));
              },
              child: Icon(Icons.add, color: Colors.black,),
              backgroundColor: Color(0xffFBB97C),
            ),
        ),
      ),
    );
  }
}
