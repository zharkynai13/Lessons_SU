import 'package:flutter/material.dart';

class StorisContainer extends StatelessWidget {
  const StorisContainer({super.key, this.icon, required this.title});
  final IconData? icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 3),
                borderRadius: BorderRadius.circular(50)),
            child: const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1633332755192-727a05c4013d?auto=format&fit=crop&q=80&w=3880&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
          ),
          Positioned(
              left: 35,
              bottom: -10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: Colors.blue,
                ),
              ))
        ]),
        Text(title)
      ],
    );
  }
}
