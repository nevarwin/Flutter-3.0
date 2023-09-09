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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(
              MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ),
            );
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
