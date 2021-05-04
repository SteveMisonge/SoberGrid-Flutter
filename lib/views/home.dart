import 'package:sober_grid/views/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sober_grid/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      drawer: MyDrawer(),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height - 80,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 2,
              ),
              Text(
                "Welcome to SoberGrid, \nJack",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 250,
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    SpecialistTile(
                      imgAssetPath: "assets/meditate.png",
                      speciality: "Safe space",
                      subTitle: "You are not alone",
                      backColor: Color(0xffFBB97C),
                    ),
                    SpecialistTile(
                      imgAssetPath: "assets/relax.png",
                      speciality: "Consult",
                      subTitle: "Talk to our specialists",
                      backColor: Color(0xffF69383),
                    ),
                    SpecialistTile(
                      imgAssetPath: "assets/emergencySupport.png",
                      speciality: "Emergency",
                      subTitle: "Where to call in case of danger",
                      backColor: Color(0xffEACBCB),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  options: CarouselOptions(
                    height: 130.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/motivation1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/motivation2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/motivation3.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Let us walk with you",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ],
                      ),
                    )
                  ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Psychologists",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              DoctorsTile()
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {
  final String imgAssetPath;
  final String speciality;
  final String subTitle;
  final Color backColor;

  SpecialistTile(
      {@required this.imgAssetPath,
      @required this.speciality,
      @required this.subTitle,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Material(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        color: backColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/'+ speciality);
            print('/'+ speciality);
          },
          child: Container(
            width: 150,
            padding: EdgeInsets.only(top: 16, right: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  speciality,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  subTitle,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Image.asset(
                  imgAssetPath,
                  height: 160,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorsInfo()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFEEE0), borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/doc.png",
              height: 50,
            ),
            SizedBox(
              width: 17,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefeni Albert",
                  style: TextStyle(color: Color(0xffFC9535), fontSize: 19),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Heart Speailist",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                  color: Color(0xffFBB97C),
                  borderRadius: BorderRadius.circular(13)),
              child: Text(
                "Call",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
