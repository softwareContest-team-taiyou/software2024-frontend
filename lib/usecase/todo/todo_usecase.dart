import 'package:flutter_template/domain/todo/grpc_service/todo_grpc_service_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/todo/repository/todo_repository.dart';

part 'todo_usecase.g.dart';

@riverpod
Future<List<Todo>> findTodosUseCase(FindTodosUseCaseRef ref) async {
  return ref.read(todosRepositoryProvider).findAll();
}

@riverpod
Future<void> addTodoUseCase(AddTodoUseCaseRef ref, String content) async {
  // ローカルリポジトリーに保存
  await ref.read(todosRepositoryProvider).add(Todo(content: content));
  // 実データベースに保存
  await ref.read(todoGrpcServiceProvider).add(Todo(content: content));
  // 呼び出す
  ref.invalidate(findTodosUseCaseProvider);
}

@riverpod
Future<void> deleteTodoUseCase(DeleteTodoUseCaseRef ref, Todo todo) async {
  await ref.read(todosRepositoryProvider).delete(todo);
  ref.invalidate(findTodosUseCaseProvider);
}

@riverpod
Future<void> initTodoUseCase(InitTodoUseCaseRef ref) async {
  final grpcData = await ref.read(todoGrpcServiceProvider).findAll();
  await ref.read(todosRepositoryProvider).init(grpcData);
  ref.invalidate(findTodosUseCaseProvider);
}
