import 'package:flutter/material.dart';
import 'package:flutter3/home_page.dart';

class LearFlutterPage extends StatefulWidget {
  const LearFlutterPage({super.key});

  @override
  State<LearFlutterPage> createState() => _LearFlutterPageState();
}

class _LearFlutterPageState extends State<LearFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Learn Flutter'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/cavite logo.png',
            height: 300,
            width: 300,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}
