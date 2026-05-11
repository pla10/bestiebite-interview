import 'package:flutter/foundation.dart';

import 'user.dart';

class UserApi {
  static Future<User> fetchUser(String id) async {
    debugPrint('FETCH $id');
    await Future.delayed(const Duration(milliseconds: 300));
    return User(id: id, name: 'Mario Rossi');
  }
}
