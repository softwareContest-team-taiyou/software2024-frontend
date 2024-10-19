import 'package:freezed_annotation/freezed_annotation.dart';

part 'box.freezed.dart';

@freezed
class Box with _$Box {
  const factory Box({
    required String name,
    required bool isLock,
  }) = _Box;
}
