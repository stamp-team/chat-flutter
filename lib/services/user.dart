import 'package:chat_flutter/interfaces/user.dart';
import 'package:chat_flutter/model/user.dart';

class UserService implements UserInterface {
  UserService();

  @override
  Future<User> getUserById(String userId) async {
    User user = User(name: "test", imgUrl: "");

    await Future.delayed(Duration(seconds: 1));
    return await Future.value(user);
  }
}
