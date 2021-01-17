import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _orgList(screenHeight),
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
              children: <Widget>[],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'Valentine Salim',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45,
                        child: Image.asset('assets/pizza.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Beginner',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45,
                        child: Image.asset('assets/donut.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Climate Cadet',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white24,
                        radius: 45,
                        child: Image.asset('assets/cupcake.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Climate Seargent',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: [
                      CircleAvatar(
                        backgroundColor: Colors.white24,
                        radius: 45,
                        child: Image.asset('assets/burger.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Climate Saviour',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ]),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '1',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Items rescued',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '15.000',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Saved',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          '2 Kg',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Food rescued',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _orgList(double screenHeight) {
    return SliverToBoxAdapter(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(height: screenHeight * 0.01),
        ListTile(
          leading: Icon(
            Icons.notifications,
            color: Color(0xff35A2FF),
          ),
          title: Text('Notifications'),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Color(0xff35A2FF),
          ),
          title: Text('Favorites'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.question_answer,
            color: Color(0xff35A2FF),
          ),
          title: Text('FAQ'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Color(0xff35A2FF),
          ),
          title: Text('Settings'),
          onTap: null,
        ),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Color(0xff35A2FF),
          ),
          title: Text('Logout'),
          onTap: () => {Navigator.of(context).pop()},
        ),
        SizedBox(height: screenHeight * 0.01),
      ],
    )));
  }
}

// class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color(0xff324982),
//       elevation: 0.0,
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }
