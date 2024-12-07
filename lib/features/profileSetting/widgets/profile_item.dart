import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  var label;
  var value;
  ProfileItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: "Montserrat",
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
