import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../user.dart';

export '../user.dart';

abstract class UserGrpcServiceInterface<T> {
  Future<bool> createUser();
  Future<User> getUser();
}

final userGrpcServiceProvider =
    Provider<UserGrpcServiceInterface<User>>((_) => throw UnimplementedError());
