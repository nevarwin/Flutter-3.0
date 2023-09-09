import 'package:flutter/material.dart';

const int items = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text('Item ${index + 1}'),
          trailing: const Icon(Icons.select_all_sharp),
          onTap: () {
            debugPrint('Item ${index + 1} Selected');
          },
        );
      },
    );
  }
}
