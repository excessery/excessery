import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _selectedIndex;
  _onSelected(int index) {
    //https://inducesmile.com/google-flutter/how-to-change-the-background-color-of-selected-listview-in-flutter/
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.06),
              Text(
                'History',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff324982),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              DefaultTabController(
                length: 2,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xffD2EAFF),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: TabBar(
                    indicator: BubbleTabIndicator(
                      tabBarIndicatorSize: TabBarIndicatorSize.tab,
                      indicatorHeight: 60.0,
                      indicatorColor: Color(0xff324982),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xff35A2FF),
                    tabs: <Widget>[
                      Text('My Orders'),
                      Text('Donations'),
                    ],
                    onTap: (index) {},
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Card(
                elevation: 5,
                child: ListTile(
                    leading: Image.asset('assets/phlogo.png'),
                    title: Text('Pizza Hut Delivery'),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    subtitle: Text('3 Jan 2021\n#12345'),
                    isThreeLine: true,
                    trailing: IconButton(
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: _selectedIndex != null && _selectedIndex == 1
                              ? Color(0xff35A2FF)
                              : Colors.grey,
                        ),
                        onPressed: () {
                          _onSelected(1);
                        })),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Card(
                elevation: 5,
                child: ListTile(
                    leading: Image.asset('assets/phlogo.png'),
                    title: Text('Pizza Hut Delivery'),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    subtitle: Text('3 Jan 2021\n#12345'),
                    isThreeLine: true,
                    trailing: IconButton(
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: _selectedIndex != null && _selectedIndex == 2
                              ? Color(0xff35A2FF)
                              : Colors.grey,
                        ),
                        onPressed: () {
                          _onSelected(2);
                        })),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Card(
                elevation: 5,
                child: ListTile(
                    leading: Image.asset('assets/phlogo.png'),
                    title: Text('Pizza Hut Delivery'),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    subtitle: Text('3 Jan 2021\n#12345'),
                    isThreeLine: true,
                    trailing: IconButton(
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: _selectedIndex != null && _selectedIndex == 3
                              ? Color(0xff35A2FF)
                              : Colors.grey,
                        ),
                        onPressed: () {
                          _onSelected(3);
                        })),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
