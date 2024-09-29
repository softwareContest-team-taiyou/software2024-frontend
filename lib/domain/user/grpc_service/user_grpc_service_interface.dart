import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../user.dart';

export '../user.dart';

abstract class UserGrpcServiceInterface<T> {
  Future<bool> createUser();
  Future<User> getUser();
  Future<bool> updateUser(T item);
}

final userGrpcServiceProvider =
    Provider<UserGrpcServiceInterface<User>>((_) => throw UnimplementedError());
