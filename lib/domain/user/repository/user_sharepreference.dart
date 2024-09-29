import 'package:shared_preferences/shared_preferences.dart';
import 'user_repository.dart';

const sharedPreferencesKey = 'user';

// 実際の実装
class SharedPreferencesUserRepository implements UserRepository<User> {
  @override
  Future<bool> createUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString(sharedPreferencesKey, "noName");
  }

  @override
  Future<User> getUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final name = sharedPreferences.getString(sharedPreferencesKey);
    return User(name: name ?? '');
  }
}
