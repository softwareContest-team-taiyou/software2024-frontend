//
//  Generated code. Do not modify.
//  source: v1/todo/todo.proto
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

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('proto.todo.v1.TodoService')
class TodoServiceClient extends $grpc.Client {
  static final _$getTodo = $grpc.ClientMethod<$0.GetTodoRequest, $0.GetTodoResponse>(
      '/proto.todo.v1.TodoService/GetTodo',
      ($0.GetTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTodoResponse.fromBuffer(value));
  static final _$createTodo = $grpc.ClientMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
      '/proto.todo.v1.TodoService/CreateTodo',
      ($0.CreateTodoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTodoResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetTodoResponse> getTodo($0.GetTodoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTodo, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateTodoResponse> createTodo($0.CreateTodoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTodo, request, options: options);
  }
}

@$pb.GrpcServiceName('proto.todo.v1.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.todo.v1.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTodoRequest, $0.GetTodoResponse>(
        'GetTodo',
        getTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTodoRequest.fromBuffer(value),
        ($0.GetTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
        'CreateTodo',
        createTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.CreateTodoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetTodoResponse> getTodo_Pre($grpc.ServiceCall call, $async.Future<$0.GetTodoRequest> request) async {
    return getTodo(call, await request);
  }

  $async.Future<$0.CreateTodoResponse> createTodo_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTodoRequest> request) async {
    return createTodo(call, await request);
  }

  $async.Future<$0.GetTodoResponse> getTodo($grpc.ServiceCall call, $0.GetTodoRequest request);
  $async.Future<$0.CreateTodoResponse> createTodo($grpc.ServiceCall call, $0.CreateTodoRequest request);
}
