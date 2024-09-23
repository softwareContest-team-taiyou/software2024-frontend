import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../todo.dart';

export '../todo.dart';

abstract class TodoGrpcServiceInterface<T> {
  Future<bool> add(T item);
  Future<List<Todo>> findAll();
}

final todoGrpcServiceProvider =
    Provider<TodoGrpcServiceInterface<Todo>>((_) => throw UnimplementedError());
