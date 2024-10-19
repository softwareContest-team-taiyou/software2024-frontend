//
//  Generated code. Do not modify.
//  source: v1/boxkey/boxkey.proto
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

import 'boxkey.pb.dart' as $0;

export 'boxkey.pb.dart';

@$pb.GrpcServiceName('proto.boxkey.v1.BoxKeyService')
class BoxKeyServiceClient extends $grpc.Client {
  static final _$initCreate = $grpc.ClientMethod<$0.InitCreateRequest, $0.InitCreateResponse>(
      '/proto.boxkey.v1.BoxKeyService/InitCreate',
      ($0.InitCreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InitCreateResponse.fromBuffer(value));

  BoxKeyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.InitCreateResponse> initCreate($0.InitCreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initCreate, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.boxkey.v1.BoxKeyService')
abstract class BoxKeyServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.boxkey.v1.BoxKeyService';

  BoxKeyServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InitCreateRequest, $0.InitCreateResponse>(
        'InitCreate',
        initCreate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InitCreateRequest.fromBuffer(value),
        ($0.InitCreateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InitCreateResponse> initCreate_Pre($grpc.ServiceCall call, $async.Future<$0.InitCreateRequest> request) async {
    return initCreate(call, await request);
  }

  $async.Future<$0.InitCreateResponse> initCreate($grpc.ServiceCall call, $0.InitCreateRequest request);
}
