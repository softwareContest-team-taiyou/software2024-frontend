import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/_gen/v1/todo/todo.pbgrpc.dart';
import 'package:flutter_template/domain/todo/grpc_service/todo_grpc_service_interface.dart';
import 'package:flutter_template/libs/grpcClinet.dart';

class TodoGrpcService implements TodoGrpcServiceInterface<Todo> {
  final Ref ref;

  TodoGrpcService(this.ref);

  @override
  Future<bool> add(Todo item) async {
    final chanel = ref.read(grpcChannelProvider);
    final client = TodoServiceClient(chanel);
    try {
      final request = CreateTodoRequest()
        ..title = "那須渚"
        ..description = "那須渚に行く";

      // Call the gRPC service method
      final response = await client.createTodo(request);
      return true; // Return true if the item is added successfully
    } catch (e) {
      print(e);
      return false; // Return false if there is an error
    }
  }
}
