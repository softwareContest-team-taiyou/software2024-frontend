import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/_gen/v1/todo/todo.pbgrpc.dart';
import 'package:flutter_template/domain/auth/auth.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/todo/grpc_service/todo_grpc_service_interface.dart';
import 'package:flutter_template/libs/grpcClinet.dart';
import 'package:flutter_template/user_interface/common/constants/auth0.dart';

class TodoGrpcService implements TodoGrpcServiceInterface<Todo> {
  final Ref ref;

  TodoGrpcService(this.ref);

  @override
  Future<bool> add(Todo item) async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();

    final client = TodoServiceClient(chanel);
    try {
      final request = CreateTodoRequest()
        ..title = item.content
        ..description = "";
      // Call the gRPC service method
      final response = await client.createTodo(request, options: option);
      return true; // Return true if the item is added successfully
    } catch (e) {
      print(e);
      return false; // Return false if there is an error
    }
  }

  @override
  Future<List<Todo>> findAll() async {
    final chanel = ref.read(grpcChannelProvider);
    final client = TodoServiceClient(chanel);
    try {
      final request = GetAllTodosRequest();
      // Call the gRPC service method
      final response = await client.getAllTodos(request);
      // You can transform the data here if needed, for example:
      List<Todo> todos = response.todos.map((todo) {
        return Todo(
          content: todo.title,
        );
      }).toList();
      return todos; // Return the list of items
    } catch (e) {
      print(e);
      return []; // Return an empty list if there is an error
    }
  }
}
