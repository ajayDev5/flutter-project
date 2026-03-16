import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Entry point of the application
void main() {
  runApp(const MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disable the debug banner
      debugShowCheckedModeBanner: false,
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
            Container(
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
                      Text(
                        months[index],
                        style: TextStyle(fontSize: 20),
                      ),

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
              itemBuilder: (context,index){

                return Container(
                  margin: EdgeInsets.all(4),
                  child: Card(
                    child: ExpansionTile(
                  
                      title: Text(months[index]),
                  
                      children: [

                        ListTile(
                          title: Text("Month Number: ${index+1}",
                           style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),

                          ),

                        ),
                  
                  
                        ListTile(
                          title: Text("Total Days: 30/31",
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),

                          ),

                        ),
                  
                      ],
                    ),
                  ),
                );

              },
            ),

            Center(
              child: Container(
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
                  "Hii AJAY I Am Inside a Container ",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),

                // we use the horizontal list
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
                  print("We click on the Home ");
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("shopify"),
                onTap: () {},
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
