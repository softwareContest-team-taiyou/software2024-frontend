import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../user.dart';

export '../user.dart';

abstract class UserRepository<T> {
  Future<bool> createUser(T item);
  Future<User> getUser();
}

final userRepositoryProvider =
    Provider<UserRepository<User>>((_) => throw UnimplementedError());
