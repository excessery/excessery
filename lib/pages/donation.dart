import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
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
    return SliverToBoxAdapter(
        child: SingleChildScrollView(
            child: Column(
      children: [
        Card(
          child: ListTile(
              leading: Image.network(''),
              title: Text('Pizza Hut Delivery'),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              subtitle: Text('Pickup from 8-10PM\n25 offers available'),
              isThreeLine: true,
              trailing: IconButton(
                  icon: Icon(
                    Icons.favorite,
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
