import 'package:excessery/pages/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
          maxHeight: height,
          minHeight: height / 1.6,
          body: Container(
            height: height / 2,
            width: width,
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1554118811-1e0d58224f24?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FmZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                  fit: BoxFit.cover,
                  height: height / 2,
                  width: width,
                ),
                Positioned(
                    top: 40.0,
                    left: 15.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                          size: 35.0,
                        ),
                        onPressed: () => Navigator.of(context).pop(true))),
              ],
            ),
          ),
          borderRadius: BorderRadius.circular(55.0),
          color: Colors.grey[100],
          panel: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/originals/96/0a/be/960abef4528685a8daffe3c4221594f2.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Pizza Hut Delivery",
                    style:
                        TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber[400],
                    size: 30.0,
                  ),
                  Text("4.7",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Container(
                    color: Colors.black45,
                    height: 40,
                    width: 2,
                  ),
                  Icon(
                    Icons.pin_drop,
                    color: Colors.red[400],
                    size: 30.0,
                  ),
                  Text(
                    "3.39KM",
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  Container(
                    color: Colors.black45,
                    height: 40,
                    width: 2,
                  ),
                  RaisedButton(
                    color: Color(0xff324982),
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Container(
              //   height: 40.0,
              //   width: width,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       menu(Colors.green, "Pizza", "assets/images/pizza.png",
              //           Colors.white),
              //       menu(Colors.grey[300], "Drinks", "assets/images/drink.png",
              //           Colors.black),
              //       menu(Colors.grey[300], "Snacks", "assets/images/snack.png",
              //           Colors.black),
              //       menu(Colors.grey[300], "Pastry", "assets/images/pastry.png",
              //           Colors.black)
              //     ],
              //   ),
              // ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: Column(
                    children: [
                      menuItemtab(
                          "https://static.toiimg.com/thumb/56933159.cms?imgsize=686279&width=800&height=800",
                          "Classic",
                          "Tamota sauce, cheese",
                          "6.99",
                          "10.99"),
                      menuItemtab(
                          "https://thebigmansworld.com/wp-content/uploads/2020/03/2-ingredient-pizza-dough-13.jpg",
                          "Americana",
                          "Base + Peperani",
                          "7.99",
                          "12.99"),
                      menuItemtab(
                          "https://i.pinimg.com/originals/5f/f3/3d/5ff33d7df72e71d8755784135a6e6edd.png",
                          "Vegetarian",
                          "Tamota,Onion and Corn",
                          "4.99",
                          "8.55"),
                      menuItemtab(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9H-kkisGIe8kvRaKRPNtMfQx97klVhJOSTg&usqp=CAU",
                          "Mexican",
                          "Mushroom + Chillies",
                          "6.99",
                          "9.25")
                    ],
                  ))
            ],
          )),
    );
  }

  Widget menuItemtab(String pizzaImage, String pizza, String ingredients,
      String price, String oldprice) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Container(
        height: 100.0,
        width: width - 40.0,
        child: Stack(
          children: [
            //let have the clok for the pizza items....
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: Container(
                padding: EdgeInsets.only(left: 70.0, right: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                height: 100.0,
                width: width - 90.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pizza,
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          ingredients,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$$price",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 12.0)),
                        Text("\$$oldprice",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 12.0,
                              decoration: TextDecoration.lineThrough,
                            )),
                        SizedBox(
                          height: 4,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffD2EAFF),
                          radius: 15,
                          child: IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 15.0,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CartScreen()));
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(pizzaImage),
                radius: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menu(Color colore, String menu, String menuImage, Color menuColor) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        alignment: Alignment.center,
        height: 40.0,
        width: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colore),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(menuImage),
              height: 20.0,
              width: 20.0,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(menu,
                style: TextStyle(
                  color: menuColor,
                ))
          ],
        ),
      ),
    );
  }
}
