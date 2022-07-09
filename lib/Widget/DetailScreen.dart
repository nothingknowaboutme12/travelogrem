import 'package:flutter/material.dart';

import 'MainScreen/CustomListTile.dart';
import 'MainScreen/ImageGrid.dart';

class DetailScren extends StatelessWidget {
  static const String name = "DetailScreen";
  const DetailScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 20, right: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Row(
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
                  Text(
                    "Maldives-12 Days",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 35,
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "July 8 2018 Baros Island",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 40),
            ImageView(
              Image1: "Assets/Maldive1.jfif",
              Image2: "Assets/Maldive1.jfif",
              Image3: "Assets/Maldive2.jfif",
            ),
            SizedBox(height: 20),
            CustomListTile(
              title: "Maui Summer 2018",
              Subtitle: "Summer collection",
              icon1: Icons.navigation_outlined,
              icon2: Icons.bubble_chart_outlined,
              icon3: Icons.favorite_border,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "July 8 2018 Baros Island",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 15,
            ),
            ImageView(
              Image1: "Assets/Maui1.jfif",
              Image2: "Assets/Maui2.jfif",
              Image3: "Assets/Maldives4.jfif",
            )
          ],
        ),
      ),
    );
  }
}
