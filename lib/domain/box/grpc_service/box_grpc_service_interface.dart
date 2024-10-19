import 'package:flutter_riverpod/flutter_riverpod.dart';

import "../box.dart";

export "../box.dart";

abstract class BoxGrpcServiceInterface<T> {
  Future<Box> isLock();
  Future<bool> unlock();
  Future<bool> lock();
}

final boxGrpcServiceProvider =
    Provider<BoxGrpcServiceInterface<Box>>((_) => throw UnimplementedError());
