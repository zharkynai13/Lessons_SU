import 'package:flutter/material.dart';
import 'package:lessons_text_widgets/widgets/custom_story_container.dart';
import 'package:lessons_text_widgets/widgets/post_container.dart';

import 'widgets/custom_column.dart';

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
        padding: const EdgeInsets.only(top: 90, left: 15, right: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Divider(),
              const SizedBox(
                height: 5,
              ),
              const PostContainers(),
              const SizedBox(
                height: 10,
              ),
              const PostContainers(),
            ],
          ),
        ),
      ),
    );
  }
}
