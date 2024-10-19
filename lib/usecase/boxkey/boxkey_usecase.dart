import 'package:flutter_template/domain/boxkey/boxkey.dart';
import 'package:flutter_template/domain/boxkey/grpc_service/boxkey_grpc_service_interface.dart';
import 'package:flutter_template/usecase/user/user_usecase.dart';
import 'package:flutter_template/user_interface/router/router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "boxkey_usecase.g.dart";

@riverpod
Future<void> initCreateBoxKeyUseCase(InitCreateBoxKeyUseCaseRef ref,
    String boxId, String boxName, String keyId, String keyName) async {
  final boxKey = BoxKey(
    boxId: boxId,
    boxName: boxName,
    keyId: keyId,
    keyName: keyName,
  );
  await ref.read(boxKeyGrpcServiceProvider).initCreate(boxKey);
  ref.invalidate(checkNameInUseCaseProvider);
}
