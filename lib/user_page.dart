import 'package:flutter/material.dart';

import 'user.dart';
import 'user_api.dart';

class UserPage extends StatelessWidget {
  final String userId;

  const UserPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User')),
      body: Center(
        child: FutureBuilder<User>(
          future: UserApi.fetchUser(userId),
          builder: (context, snap) {
            if (!snap.hasData) {
              return const CircularProgressIndicator();
            }
            return Text(
              snap.data!.name,
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
    );
  }
}
