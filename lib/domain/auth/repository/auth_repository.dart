import 'package:flutter_template/domain/auth/auth.dart';
import 'package:grpc/service_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract class AuthRepository<T> {
  Future<T> getAuth();
  Future<bool> checkAuth();
  Future<bool> registerAuth(T auth);
  Future<bool> deleteAuth();
  Future<CallOptions> getAccessToken();
}

final authRepositoryProvider =
    Provider<AuthRepository<Auth>>((_) => throw UnimplementedError());
