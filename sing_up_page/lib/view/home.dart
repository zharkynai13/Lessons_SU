import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sing_up_page/view/onbording.dart';
import 'package:sing_up_page/widgets/text_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "study IN",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 85,
                ),
                const CustomTextForm(
                  hintText: "Create Username",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextForm(
                  hintText: "Create Passward",
                ),
                const SizedBox(
                  height: 18,
                ),
                const CustomTextForm(
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 29,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.only(
                          left: 40, right: 40, top: 15, bottom: 15)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (_) => const OnBoardingScreen()));
                  },
                  child: const Text(
                    "Join Us",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
