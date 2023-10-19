import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_2_sign_in/models/user_model.dart';
import 'package:lesson_2_sign_in/view/onbarding.dart';
import 'package:lesson_2_sign_in/view/second_page.dart';
import 'package:lesson_2_sign_in/widgets/custom_text_form.dart';

final student = <Studenter>[
  zharkynai,
  aibek,
  asan,
  meder,
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

String? _name;
String? _email;
String? _password;

class _MyHomePageState extends State<MyHomePage> {
  void controller(String? name, String? email, String? password) {
    int index = 0;

    for (int i = 0; i < student.length; i++) {
      var studenter = student[i];

      if (name == studenter.name &&
          email == studenter.email &&
          password == studenter.passward) {
        print("true${email}");
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => SecondPage()));
      } else {
        const ScaffoldMessenger(
          child: Text("Your data isnt correct"),
        );
      }
    }
  }

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
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => OnBoardingScreen()));
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
