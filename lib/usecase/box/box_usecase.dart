import 'package:flutter_template/domain/box/box.dart';
import 'package:flutter_template/domain/box/grpc_service/box_grpc_service_interface.dart';
import 'package:flutter_template/domain/boxkey/boxkey.dart';
import 'package:flutter_template/domain/boxkey/grpc_service/boxkey_grpc_service_interface.dart';
import 'package:flutter_template/usecase/user/user_usecase.dart';
import 'package:flutter_template/user_interface/router/router.dart';
import 'package:riverpod/src/framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part "box_usecase.g.dart";

@riverpod
Future<Box> isLockUseCase(IsLockUseCaseRef ref) async {
  return ref.read(boxGrpcServiceProvider).isLock();
}

@riverpod
Future<void> unlockUseCase(UnlockUseCaseRef ref) async {
  await ref.read(boxGrpcServiceProvider).unlock();
  ref.invalidate(isLockUseCaseProvider);
}

@riverpod
Future<void> lockUseCase(LockUseCaseRef ref) async {
  await ref.read(boxGrpcServiceProvider).lock();
  ref.invalidate(isLockUseCaseProvider);
}
