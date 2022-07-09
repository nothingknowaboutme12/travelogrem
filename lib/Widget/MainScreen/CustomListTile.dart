import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final String Subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            fontSize: 28,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        Subtitle,
        style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade500,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500),
      ),
      trailing: Container(
        height: 40,
        width: 120,
        child: Row(
          children: [
            Icon(
              icon1,
              size: 32,
              color: Colors.grey,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              icon2,
              size: 32,
              color: Colors.grey,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              icon3,
              size: 32,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  const CustomListTile({
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.Subtitle,
  });
}
