import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // 👈 MUST
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<String> months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
      "in window laptop",
      "testing another line",
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          titleSpacing: 0.0,
          toolbarHeight: 60.0,
          toolbarOpacity: 0.8,

          title: Text("Container Example"),

          actions: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.comment),
              ),
              onTap: () {
                print("click on the app bar icon");
              },
            ),
          ],

          // we using the Tab
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.shop), text: "Shop"),
              Tab(icon: Icon(Icons.chat), text: "chat"),
              Tab(icon: Icon(Icons.call), text: "call"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // home tab

            /*Center(
            child:Text(
            "Home Screen",
            style: TextStyle(
            color: Colors.red,
            fontWeight:FontWeight.bold),),),*/

            // we use the Flutter - Horizontal List use the simple Listview
            /*SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    color: Colors.black,
                    child: Center(child: Text("Item 1")),
                  ),
                  Container(
                    width: 100,
                    color: Colors.green,
                    child: Center(child: Text("Item 2")),
                  ),

                  Container(
                    width: 100,
                    color: Colors.red,
                    child: Center(child: Text("Item3")),
                  ),
                  Container(
                    width: 100,
                    color: Colors.amber,
                    child: Center(child: Text("Item4")),
                  ),
                  Container(
                    width: 100,
                    color: Colors.blue,
                    child: Center(child: Text("Item5")),
                  ),
                ],
              ),
            ),*/

            // GridView.count
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,

              children: [


                Container(
                  color: Colors.tealAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, size: 40, color: Colors.red),
                      SizedBox(height: 8),
                      Text("Home"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wifi, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("WIFI"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("Setting"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.edit, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("Edit"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.limeAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("Person"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("Dasboard"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.read_more, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text("Read more"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 40, color: Colors.red),
                      SizedBox(height: 8),
                      Text("favorite"),
                    ],
                  ),
                ),

                Card(
                  elevation: 5,
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shop, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text(
                        "Shop",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Colors.tealAccent,
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.business, size: 40, color: Colors.black87),
                      SizedBox(height: 8),
                      Text(
                        "business",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    print("Home Clicked");
                  },
                  child: Card(
                    color: Colors.greenAccent,
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.home, size: 40), Text("Home")],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("we click on the gesturdector :");
                  },
                  child: Card(
                    color: Colors.pinkAccent,
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.hotel, size: 40, color: Colors.black87),
                        SizedBox(height: 8),
                        Text(
                          "Hotel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Get.to(StudentFormScreen());
                    // 👈 navigation
                  },

                  child: Card(
                    elevation: 5,
                    color: Colors.lightGreenAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login, size: 40, color: Colors.blue),
                        SizedBox(height: 8),
                        Text(
                          "login_screen",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                   Get.to(Home());
                  },
                  child: Card(
                    color: Colors.deepOrange,
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home, size: 40, color: Colors.black87),
                        Text(
                          "EEEE",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      SecondScreen(),
                      arguments: {"name": "AJAY", "age": 25},
                    );
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.school), Text("Next Screen")],
                    ),
                  ),
                ),
              ],
            ),

            /* ListView.builder(
                //  itemCount: 10,
                  itemBuilder: (context, position) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(position.toString(),
                            style: TextStyle(fontSize: 22)),
                      ),
                    );
                  },
                ),*/

            // shop tab

            /*Center
            (child:Text(
            "Shop Screen ",
            style: TextStyle(
            color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 20),),),*/

            // listview builder
            ListView.builder(
              itemCount: months.length,
              itemBuilder: (context, index) {
                return Container(
                  // set the border margin and border
                  margin: EdgeInsets.all(6),

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      // Number
                      Text(
                        (index + 1).toString(),
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(width: 10), // spacing
                      // Month Name
                      Text(months[index], style: TextStyle(fontSize: 20)),
                    ],
                  ),
                );
              },
            ),

            /* Center(
              child: Text(
                "Chat Screen",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),*/

            // we use the ExpansionTile With Card
            ListView.builder(
              itemCount: months.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(4),
                  child: Card(
                    child: ExpansionTile(
                      leading: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                        size: 30,
                      ),
                      title: Text(months[index]),

                      children: [
                        ListTile(
                          title: Text(
                            "Month Number: ${index + 1}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),

                        ListTile(
                          title: Text(
                            "Total Days: 30/31",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            Center(
              child: Column(
                children: [
                  Container(
                    //  1 height and width of the container
                    height: 200,
                    width: double.infinity,

                    // 2 background color of the containerS

                    // 3 margin of the  Container
                    margin: EdgeInsets.all(20),

                    // 4 Padding of the Container
                    padding: EdgeInsets.all(25),

                    // 5  Alignment of the container
                    alignment: Alignment.center,

                    // 6  Decoration of the Container
                    decoration: BoxDecoration(
                      color: Colors.blue,

                      //  7 Add rounded Corners
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 3),
                    ),

                    //  8 Rotation of the Container
                    transform: Matrix4.rotationY(0.1),

                    child: Text(
                      "Hii AJAY I Am Inside a Container , "
                      "Added new text on home screen",

                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    // button styling
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      /*  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // rounded corner
                      ),*/
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10, // shadow
                    ),

                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Welcome to Dialog",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            content: Text(
                              "button outside Container",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "ok",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("AlertBox"),
                  ),

                  SizedBox(height: 20),

                  // Flutter - Circular & Linear Progress Indicators
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(color: Colors.blue),

                      SizedBox(height: 15),

                      Text("Loading...", style: TextStyle(fontSize: 16)),
                    ],
                  ),

                  SizedBox(height: 20),
                  LinearProgressIndicator(
                    color: Colors.blue,
                    backgroundColor: Colors.grey,
                    minHeight: 6,
                    value: 0.7,
                  ),
                ],
              ),
            ),
          ],
        ),

        // we use the Floating action Button
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          elevation: 10.0,
          child: Icon(Icons.add, color: Colors.white),
          onPressed: () {
            print("Floating Action Pressed");
          },
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                //accountName: Text("AJAY",style: TextStyle(fontSize: 15),),
                accountName: RichText(
                  text: TextSpan(
                    text: "Mr.",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    children: [
                      TextSpan(
                        text: "AJAY",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),

                accountEmail: Text(
                  "kumar622ajay@gmail.com",
                  style: TextStyle(fontSize: 15),
                ),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("sp.jpg"),
                ),
                decoration: BoxDecoration(color: Colors.blue),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Get.to(SecondScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("shopify"),
                onTap: () {
                  Get.to(SecondScreen());
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("My Profile "),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Person"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments ?? {};

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text(
          "Name: ${data['name']} \nAge: ${data['age']}",
          style: TextStyle(fontSize: 20, color: Colors.black87,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}


class StudentFormScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  // 👉 buildCard function
  Widget buildCard({required Widget child}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: child,
    );
  }

  // 👉 Input decoration
  InputDecoration inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      border: const UnderlineInputBorder(),
    );
  }
  // 👉 Label function (optional)
  Widget buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: const Text("Student Form"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding
        (
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // 👉 Student Name Field
            buildCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildLabel("Student Name *"),
                  const SizedBox(height: 12),

                  TextFormField(
                    controller: nameController,
                    decoration: inputDecoration("Enter your name"),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}





/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Voter Finder",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const VoterScreen(),
    );
  }
}*/



