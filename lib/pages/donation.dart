import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'Charity.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  List<Charity> charities;
  bool loaded = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    if (!loaded)
      getCharityData();
    loaded = true;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _orgList(screenHeight),
        ],
      ),
    );
  }

  void getCharityData() async {
    charities = new List<Charity>();
    Future<Null> throwaway = FirebaseDatabase.instance.reference()
        .child('charities').once().then((DataSnapshot snapshot) {
      List<dynamic> charityList = snapshot.value;
      charityList.forEach( (value) {
        int done_pct;
        String name, type, icon;
        Map<dynamic, dynamic> charityInfo = value;
        charityInfo.forEach(
                (key, value) {
              switch (key.toString()) {
                case "done_pct":
                  done_pct = int.parse(value.toString());
                  break;
                case "name":
                  name = value.toString();
                  break;
                case "type":
                  type = value.toString();
                  break;
                case "icon":
                  icon = value.toString();
                  break;
              }
            }
        );
        charities.add(new Charity(name, type, done_pct, icon));
      });
      this.setState(() {});
    }
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xff324982),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Text(
                //   'Excessery',
                //   style: const TextStyle(
                //     color: Colors.white,
                //     fontSize: 25.0,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Share Kindness!',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Donate to people in need',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/kindness.png')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  int _selectedIndex;
  _onSelected(int index) {
    //https://inducesmile.com/google-flutter/how-to-change-the-background-color-of-selected-listview-in-flutter/
    setState(() {
      _selectedIndex = index;
    });
  }

  SliverToBoxAdapter _orgList(double screenHeight) {
    return SliverToBoxAdapter(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(height: screenHeight * 0.01),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
          alignment: Alignment.topLeft,
          child: Text(
            'Donations',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Color(0xff324982),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  elevation: 0,
                  child: Text(
                    'All',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xff324982),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black12)),
                  onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  elevation: 0,
                  child: Text(
                    'Orphanage',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xff324982),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black12)),
                  onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  elevation: 0,
                  child: Text(
                    'Disaster Relief',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xff324982),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black12)),
                  onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                  elevation: 0,
                  child: Text(
                    'Social Weldfare',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xff324982),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: BorderSide(color: Colors.black12)),
                  onPressed: () {}),
              SizedBox(
                width: 10,
              ),
            ])),
        SizedBox(height: screenHeight * 0.01),
        Container(
          height: 600,
          width: 600,
          child: ListView.builder(
            itemCount: charities.length,
            itemBuilder: (context, int index) {
              Charity current = charities[index];
              return new Card(
                elevation: 5,
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      Image.asset(current.icon),
                      SizedBox(height: screenHeight * 0.02),
                      Text(current.type),
                      Row(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(current.name),
                              SizedBox(
                                width: 80,
                              ),
                              Text(
                                current.done_pct.toString() + '%',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff35A2FF)),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: new LinearPercentIndicator(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.85,
                          lineHeight: 14.0,
                          percent: current.done_pct / 100,
                          backgroundColor: Colors.grey,
                          progressColor: Color(0xff35A2FF),
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              );
            }
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
      ],
    )));
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff324982),
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.pin_drop_outlined),
        color: Color(0xff35A2FF),
        iconSize: 28.0,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none),
          color: Color(0xff35A2FF),
          iconSize: 28.0,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
