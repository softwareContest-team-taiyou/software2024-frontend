import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/_gen/v1/user/user.pbgrpc.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/user/grpc_service/user_grpc_service_interface.dart';
import 'package:flutter_template/domain/user/user.dart';
import 'package:flutter_template/libs/grpcClinet.dart';

class UserGrpcService implements UserGrpcServiceInterface<User> {
  final Ref ref;

  UserGrpcService(this.ref);

  @override
  Future<bool> createUser(User item) async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();

    final client = UserServiceClient(chanel);
    try {
      final request = CreateUserRequest();
      // Call the gRPC service method
      final response = await client.createUser(request, options: option);
      return true; // Return true if the item is added successfully
    } catch (e) {
      print(e);
      return false; // Return false if there is an error
    }
  }

  @override
  Future<User> getUser() async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();
    final client = UserServiceClient(chanel);
    try {
      final request = GetUserRequest();
      // Call the gRPC service method
      final response = await client.getUser(request, options: option);
      // You can transform the data here if needed, for example:
      final user = User(
        name: response.name,
      );
      return user; // Return the list of items
    } catch (e) {
      print(e);
      return User(name: ''); // Return an empty list if there is an error
    }
  }
}
