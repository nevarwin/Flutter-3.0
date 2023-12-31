import 'package:flutter/material.dart';
import 'package:flutter3/home_page.dart';

class LearFlutterPage extends StatefulWidget {
  const LearFlutterPage({super.key});

  @override
  State<LearFlutterPage> createState() => _LearFlutterPageState();
}

class _LearFlutterPageState extends State<LearFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(Icons.info_rounded),
          ),
        ],
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
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  'This is a Text Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.amber : Colors.grey,
              ),
              onPressed: () {
                debugPrint('Elavated Button Pushed');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button Pushed');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button Pushed');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Gesture Detector On Tap');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.fiber_manual_record,
                    color: Colors.red,
                  ),
                  Text('Row'),
                  Icon(
                    Icons.fiber_manual_record,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() => isSwitch = newBool);
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() => isCheckbox = newBool);
              },
            ),
            Image.network(
                'https://plus.unsplash.com/premium_photo-1671872368093-d43b82e39760?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2003&q=80'),
          ],
        ),
      ),
    );
  }
}
