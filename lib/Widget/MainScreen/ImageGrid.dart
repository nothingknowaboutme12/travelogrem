import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView(
      {required this.Image1, required this.Image2, required this.Image3});
  final String Image1;
  final String Image2;
  final String Image3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 230,
          padding: EdgeInsets.only(right: 2),

          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10)
          // ),
          width: MediaQuery.of(context).size.width / 2 + 43,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
            child: Image.asset(
              Image1,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 115,
              padding: EdgeInsets.only(bottom: 2),

              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10)
              // ),
              width: MediaQuery.of(context).size.width / 2 - 80,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  Image2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 115,
              width: MediaQuery.of(context).size.width / 2 - 80,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
                child: Image.asset(
                  Image3,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
