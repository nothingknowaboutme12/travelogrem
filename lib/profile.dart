import 'package:flutter/material.dart';
import 'package:travelogrem/Widget/MainScreen/CustomListTile.dart';

import 'Widget/ProfileScreen/ImageCntr.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  static const String name = "Profile_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 35,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CircleAvatar(
                maxRadius: 65,
                backgroundImage: AssetImage("Assets/girl.jpg"),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "umch the offically",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "flutter developer",
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customclm(
                    label: "24k",
                    subtitle: "Followers",
                  ),
                  customclm(
                    label: "31",
                    subtitle: "Trips",
                  ),
                  customclm(
                    label: "21",
                    subtitle: "Buckets list",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.grid_view,
                    color: Colors.grey.shade400,
                    size: 33,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.menu,
                    size: 35,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CustomCntr(
                name: "Assets/Maldives4.jfif",
              ),
              SizedBox(
                height: 10,
              ),
              CustomListTile(
                title: "MAlvides-12 Days",
                Subtitle: "collection of 52 photos",
                icon1: Icons.navigation_outlined,
                icon2: Icons.bubble_chart_outlined,
                icon3: Icons.favorite_border,
              ),
              CustomCntr(name: "Assets/Maui1.jfif"),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customclm extends StatelessWidget {
  const customclm({
    required this.label,
    required this.subtitle,
  });
  final String label;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 23,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic),
        ),
        Text(
          subtitle,
          style: TextStyle(
              fontSize: 19,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
