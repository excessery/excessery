import 'package:excessery/pages/homepage.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final List<String> imgList = [
  'assets/food.png',
  'assets/discount.png',
  'assets/give.png',
  'assets/badge.png'
];

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  void slideSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text(
                            'Welcome!',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sign in to continue',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.blue,
                        ),
                        labelText: "Email",
                        fillColor: Colors.white,
                        // enabledBorder: const OutlineInputBorder(
                        //   borderSide: const BorderSide(
                        //       color: Color(0xff6202ee), width: 1.5),
                        // ),
                        // focusedBorder: const OutlineInputBorder(
                        //   borderSide: const BorderSide(
                        //       color: Color(0xff6202ee), width: 1.5),
                        // ),
                        // border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        labelText: "Password",
                        fillColor: Colors.white,
                        //   enabledBorder: const OutlineInputBorder(
                        //     borderSide: const BorderSide(
                        //         color: Color(0xff6202ee), width: 1.5),
                        //   ),
                        //   border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Password cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: RaisedButton(
                          elevation: 0,
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Color(0xff324982),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            //side: BorderSide(color: Colors.black)
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Forgot Password?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: RaisedButton(
                        elevation: 0,
                        child: Text(
                          'Sign up',
                          style:
                              TextStyle(color: Color(0xff35A2FF), fontSize: 20),
                        ),
                        color: Color(0xffD2EAFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          //side: BorderSide(color: Colors.black)
                        ),
                        onPressed: slideSheet1,
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage()));
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void slideSheet1() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text(
                            'Create an account',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Start your rescue now',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.face,
                          color: Colors.blue,
                        ),
                        labelText: "Name",
                        fillColor: Colors.white,
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Name cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.blue,
                        ),
                        labelText: "Email",
                        fillColor: Colors.white,
                        // enabledBorder: const OutlineInputBorder(
                        //   borderSide: const BorderSide(
                        //       color: Color(0xff6202ee), width: 1.5),
                        // ),
                        // focusedBorder: const OutlineInputBorder(
                        //   borderSide: const BorderSide(
                        //       color: Color(0xff6202ee), width: 1.5),
                        // ),
                        // border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        labelText: "Password",
                        fillColor: Colors.white,
                        //   enabledBorder: const OutlineInputBorder(
                        //     borderSide: const BorderSide(
                        //         color: Color(0xff6202ee), width: 1.5),
                        //   ),
                        //   border: const OutlineInputBorder(),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Password cannot be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: RaisedButton(
                          elevation: 0,
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          color: Color(0xff324982),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            //side: BorderSide(color: Colors.black)
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Already have an account?'),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 4,
                          child: RaisedButton(
                              elevation: 0,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Color(0xff35A2FF), fontSize: 20),
                              ),
                              color: Color(0xffD2EAFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                //side: BorderSide(color: Colors.black)
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            CarouselWithIndicator(),
            SizedBox(
              height: 150,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.2,
              child: RaisedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Color(0xff324982),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    //side: BorderSide(color: Colors.black)
                  ),
                  onPressed: slideSheet),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Register new account',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  color: Color(0xff35A2FF),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map((url) {
            int index = imgList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(),
      items: imgList
          .map((item) => Container(
                child: Center(
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    ));
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
