import 'package:excessery/pages/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<Restaurant> restaurants;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _foodList(screenHeight),
        ],
      ),
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
                Text(
                  'What do you want \nto save for today?',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 27.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: new ListTile(
                    leading: new Icon(Icons.search),
                    title: new TextField(
                      decoration: new InputDecoration(
                        hintText: 'Find the food or restaurant...',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
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

  SliverToBoxAdapter _foodList(double screenHeight) {
    restaurants = new List<Restaurant>();
    restaurants.add(new Restaurant("Taco Bell", "8pm", "10pm", 25));

    return SliverToBoxAdapter(
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.01),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Explore Categories',
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
                            'Restaurants',
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
                            'Cafes & Bakeries',
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
                            'Grocery Stores',
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
                Container(
                  child: ListView.builder(
                    itemCount: restaurants.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                            leading: Image.asset('assets/kfc.png'),
                            title: Text(restaurants[index].name),
                            contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            subtitle: Text('Pickup from 8-10PM\n25 offers available'),
                            isThreeLine: true,
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  color: _selectedIndex != null && _selectedIndex == 4
                                      ? Color(0xff35A2FF)
                                      : Colors.grey,
                                ),
                                onPressed: () {
                                  _onSelected(4);
                                })),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      );
                    }
                  )
                )
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
