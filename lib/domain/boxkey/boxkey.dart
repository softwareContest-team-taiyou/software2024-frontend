import 'package:freezed_annotation/freezed_annotation.dart';

part 'boxkey.freezed.dart';

@freezed
class BoxKey with _$BoxKey {
  const factory BoxKey({
    required String keyId,
    required String keyName,
    required String boxId,
    required String boxName,
  }) = _BoxKey;
}
