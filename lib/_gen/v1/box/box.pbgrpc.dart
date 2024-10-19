//
//  Generated code. Do not modify.
//  source: v1/box/box.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'box.pb.dart' as $0;

export 'box.pb.dart';

@$pb.GrpcServiceName('proto.box.v1.BoxService')
class BoxServiceClient extends $grpc.Client {
  static final _$isLock = $grpc.ClientMethod<$0.isLockRequest, $0.isLockResponse>(
      '/proto.box.v1.BoxService/isLock',
      ($0.isLockRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.isLockResponse.fromBuffer(value));
  static final _$lock = $grpc.ClientMethod<$0.lockRequest, $0.lockResponse>(
      '/proto.box.v1.BoxService/lock',
      ($0.lockRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.lockResponse.fromBuffer(value));
  static final _$unlock = $grpc.ClientMethod<$0.unlockRequest, $0.unlockResponse>(
      '/proto.box.v1.BoxService/unlock',
      ($0.unlockRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.unlockResponse.fromBuffer(value));

  BoxServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.isLockResponse> isLock($0.isLockRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isLock, request, options: options);
  }

  $grpc.ResponseFuture<$0.lockResponse> lock($0.lockRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lock, request, options: options);
  }

  $grpc.ResponseFuture<$0.unlockResponse> unlock($0.unlockRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unlock, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.box.v1.BoxService')
abstract class BoxServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.box.v1.BoxService';

  BoxServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.isLockRequest, $0.isLockResponse>(
        'isLock',
        isLock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.isLockRequest.fromBuffer(value),
        ($0.isLockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.lockRequest, $0.lockResponse>(
        'lock',
        lock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.lockRequest.fromBuffer(value),
        ($0.lockResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.unlockRequest, $0.unlockResponse>(
        'unlock',
        unlock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.unlockRequest.fromBuffer(value),
        ($0.unlockResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.isLockResponse> isLock_Pre($grpc.ServiceCall call, $async.Future<$0.isLockRequest> request) async {
    return isLock(call, await request);
  }

  $async.Future<$0.lockResponse> lock_Pre($grpc.ServiceCall call, $async.Future<$0.lockRequest> request) async {
    return lock(call, await request);
  }

  $async.Future<$0.unlockResponse> unlock_Pre($grpc.ServiceCall call, $async.Future<$0.unlockRequest> request) async {
    return unlock(call, await request);
  }

  $async.Future<$0.isLockResponse> isLock($grpc.ServiceCall call, $0.isLockRequest request);
  $async.Future<$0.lockResponse> lock($grpc.ServiceCall call, $0.lockRequest request);
  $async.Future<$0.unlockResponse> unlock($grpc.ServiceCall call, $0.unlockRequest request);
}
