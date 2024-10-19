import 'package:riverpod_annotation/riverpod_annotation.dart';

import "../boxkey.dart";

export "../boxkey.dart";

abstract class BoxKeyGrpcServiceInterface<T> {
  Future<bool> initCreate(T item);
}

final boxKeyGrpcServiceProvider = Provider<BoxKeyGrpcServiceInterface<BoxKey>>(
    (_) => throw UnimplementedError());
