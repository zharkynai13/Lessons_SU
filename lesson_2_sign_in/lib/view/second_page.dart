import 'package:flutter/material.dart';
import 'package:lesson_2_sign_in/widgets/app_scaffold.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Мой профиль",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333A53)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.drive_file_rename_outline,
                    color: Colors.white,
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const CircleAvatar(
            radius: 45,
            child: Image(
              image: AssetImage("assets/user_su.png"),
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          const Text(
            "Имя Фамилия Отчество",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              SizedBox(
                width: 20,
              ),
              Text("+92 1234567890")
            ],
          )
        ],
      ),
    );
  }
}
