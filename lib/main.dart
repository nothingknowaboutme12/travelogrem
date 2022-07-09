import 'package:flutter/material.dart';
import 'package:travelogrem/Widget/DetailScreen.dart';
import 'package:travelogrem/profile.dart';

import 'Widget/MainScreen/CustomListTile.dart';
import 'Widget/MainScreen/ImageGrid.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travelogrem",
      routes: {
        Profile.name: (context) => Profile(),
      },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 16),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Travelogram",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.notifications_rounded,
                      size: 40,
                      color: Colors.grey.shade400,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Profile();
                            },
                          ));
                        },
                        child: CircleAvatar(
                          maxRadius: 26,
                          backgroundImage: AssetImage(
                            "Assets/girl.jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: ListTile(
                      leading: Icon(
                        Icons.navigation,
                        size: 50,
                        color: Colors.blue,
                      ),
                      title: Text(
                        "Maldives trip 2018",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade500,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return DetailScren();
                            },
                          ));
                        },
                      ),
                      subtitle: Text(
                        "Add an Update",
                        style: TextStyle(
                            fontSize: 28,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "From the community",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade500,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "View",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.cyan,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ImageView(
                  Image1: "Assets/Maldive1.jfif",
                  Image2: "Assets/Maldive1.jfif",
                  Image3: "Assets/Maldive2.jfif",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomListTile(
                  title: "Maui Summer 2018",
                  Subtitle: "Summer collection",
                  icon1: Icons.navigation_outlined,
                  icon2: Icons.bubble_chart_outlined,
                  icon3: Icons.favorite_border,
                ),
                SizedBox(
                  height: 10,
                ),
                ImageView(
                  Image1: "Assets/Maui1.jfif",
                  Image2: "Assets/Maui2.jfif",
                  Image3: "Assets/Maldives4.jfif",
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            iconSize: 37,
            selectedFontSize: 0.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 36,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monitor_heart_outlined),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
