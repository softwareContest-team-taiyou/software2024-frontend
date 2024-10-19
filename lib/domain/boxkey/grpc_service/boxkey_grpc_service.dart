import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/_gen/v1/boxkey/boxkey.pbgrpc.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/boxkey/boxkey.dart';
import 'package:flutter_template/domain/boxkey/grpc_service/boxkey_grpc_service_interface.dart';
import 'package:flutter_template/libs/grpcClinet.dart';

class BoxKeyGrpcService implements BoxKeyGrpcServiceInterface<BoxKey> {
  final Ref ref;

  BoxKeyGrpcService(this.ref);

  @override
  Future<bool> initCreate(BoxKey boxkey) async {
    final chanel = ref.read(grpcChannelProvider);
    final option = await ref.read(authRepositoryProvider).getAccessToken();
    final client = BoxKeyServiceClient(chanel);
    try {
      final request = InitCreateRequest(
        boxId: boxkey.boxId,
        boxName: boxkey.boxName,
        keyId: boxkey.keyId,
        keyName: boxkey.keyName,
      );
      // Call the gRPC service method
      final response = await client.initCreate(request, options: option);
      return true; // Return true if the item is added successfully
    } catch (e) {
      print(e);
      return false; // Return false if there is an error
    }
  }
}
