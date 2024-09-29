import 'package:flutter_template/domain/user/grpc_service/user_grpc_service_interface.dart';
import 'package:flutter_template/domain/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "user_usecase.g.dart";

@riverpod
Future<User> getUserUseCase(GetUserUseCaseRef ref) async {
  return ref.read(userGrpcServiceProvider).getUser();
}

@riverpod
Future<void> updateUserUseCase(UpdateUserUseCaseRef ref, String content) async {
  await ref.read(userGrpcServiceProvider).updateUser(User(name: content));
  ref.invalidate(getUserUseCaseProvider);
}
