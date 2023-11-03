import 'package:flutter/material.dart';

class PostContainers extends StatelessWidget {
  const PostContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1633332755192-727a05c4013d?auto=format&fit=crop&q=80&w=3880&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Timurmone"),
                      Text(
                        "Karakol",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  size: 30,
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        const Image(
            height: 450,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://media.istockphoto.com/id/1420486889/photo/candid-portrait-of-young-middle-eastern-digital-native.jpg?s=2048x2048&w=is&k=20&c=9OR68bllQ7AiHzio9t82JV-m5-AgxvwwHoJnuyyyJnM=")),
        Row(
          children: [
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    iconSize: 30,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: 33,
                        image: NetworkImage(
                            "https://static.thenounproject.com/png/3460458-200.png"),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: 25,
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/2099/2099085.png"),
                      )),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
