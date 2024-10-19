import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/_gen/v1/box/box.pbgrpc.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/box/grpc_service/box_grpc_service_interface.dart';
import 'package:flutter_template/libs/grpcClinet.dart';

class BoxGrpcService implements BoxGrpcServiceInterface<Box> {
  final Ref ref;

  BoxGrpcService(this.ref);

  @override
  Future<Box> isLock() async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();
    final client = BoxServiceClient(chanel);

    try {
      final request = isLockRequest();
      final response = await client.isLock(request, options: option);
      final box = Box(
        isLock: response.isLock,
        name: response.name,
      );
      return box;
    } catch (e) {
      return const Box(
        isLock: false,
        name: 'エラー',
      );
    }
  }

  @override
  Future<bool> lock() async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();
    final client = BoxServiceClient(chanel);

    try {
      final request = lockRequest();
      final response = await client.lock(request, options: option);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> unlock() async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();
    final client = BoxServiceClient(chanel);

    try {
      final request = unlockRequest();
      final response = await client.unlock(request, options: option);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
