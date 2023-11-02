// import 'package:flutter/material.dart';

// class Example extends StatelessWidget {
//   const Example({super.key});
//   final List<String> text = const ["1", "2", "3", "4", "5", "Example"];
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> textWidget = [];

//     for (var test in text) {
//       final example = TextWidget(title: test);
//       textWidget.add(example);
//     }

//     // massiv text widgetovx

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Text Widgets"),
//       ),
//       body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: textWidget),
//     );
//   }
// }

// // widget
// class TextWidget extends StatelessWidget {
//   const TextWidget({super.key, required this.title});
//   final String title;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(title, style: const TextStyle(fontSize: 30)),
//     );
//   }
// }

import 'dart:js_interop_unsafe';

import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                    width: 100,
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/1600px-Instagram_logo.svg.png")),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 30,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Image(
                            width: 25,
                            image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/previews/002/428/264/non_2x/messenger-outline-icon-free-vector.jpg")))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StorisContainer(
                    title: "Your Story",
                    icon: Icons.add_circle,
                  ),
                  StorisContainer(
                    title: "Adeline",
                  ),
                  StorisContainer(
                    title: "Nurbayan",
                  ),
                  StorisContainer(
                    title: "Asan",
                  ),
                  StorisContainer(
                    title: "Aibek",
                  ),
                  StorisContainer(
                    title: "Adeni",
                  ),
                  StorisContainer(
                    title: "Ramazan",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PostContainers()
          ],
        ),
      ),
    );
  }
}

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

class PostContainers extends StatelessWidget {
  const PostContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent, width: 3),
                  borderRadius: BorderRadius.circular(50)),
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1633332755192-727a05c4013d?auto=format&fit=crop&q=80&w=3880&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Timurmone"),
                Text(
                  "Karakol",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
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
        const Image(
            image: NetworkImage(
                "https://media.istockphoto.com/id/1420486889/photo/candid-portrait-of-young-middle-eastern-digital-native.jpg?s=2048x2048&w=is&k=20&c=9OR68bllQ7AiHzio9t82JV-m5-AgxvwwHoJnuyyyJnM="))
      ],
    );
  }
}
