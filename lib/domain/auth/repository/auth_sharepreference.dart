import 'package:flutter_template/domain/auth/auth.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:grpc/service_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert'; // これを追加

const sharedPreferencesKey = "auth";

class SharedPreferencesAuthRepository implements AuthRepository<Auth> {
  @override
  Future<bool> registerAuth(Auth auth) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    // auth オブジェクトを JSON 形式に変換して保存
    final authJson = jsonEncode({
      'accessToken': auth.accessToken,
      'refreshToken': auth.refreshToken,
      'idToken': auth.idToken,
    });
    return await sharedPreferences.setString(sharedPreferencesKey, authJson);
  }

  @override
  Future<bool> deleteAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.remove(sharedPreferencesKey);
  }

  @override
  Future<Auth> getAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(sharedPreferencesKey);
    if (authString == null) {
      throw Exception('Auth data not found in SharedPreferences');
    }
    return Auth.fromString(authString);
  }

  @override
  Future<bool> checkAuth() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(sharedPreferencesKey);
    if (authString == null) {
      return false;
    }
    return true;
  }

  @override
  Future<CallOptions> getAccessToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final authString = sharedPreferences.getString(sharedPreferencesKey);
    if (authString == null) {
      throw Exception('Auth data not found in SharedPreferences');
    }

    final token = Auth.fromString(authString).accessToken;
    return CallOptions(metadata: {'authorization': 'Bearer $token'});
  }
}
