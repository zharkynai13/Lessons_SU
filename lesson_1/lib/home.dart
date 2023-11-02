import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// comment

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffECB90B), //hex color
        title: const Text(
          "Lesson1",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 50, top: 40, left: 30, right: 30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              child: Center(child: Text("Test")),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1697723768983-fdb24e83e6db?auto=format&fit=crop&q=80&w=2787&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      const Text(
                        "World",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Hello")),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          )),
                      TextButton(
                        onPressed: () {},
                        onHover: (value) => true,
                        child: Text(
                          "data",
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
