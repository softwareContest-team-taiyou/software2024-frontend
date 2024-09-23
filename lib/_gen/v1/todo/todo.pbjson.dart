//
//  Generated code. Do not modify.
//  source: v1/todo/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'FAILURE', '2': 1},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSCwoHU1VDQ0VTUxAAEgsKB0ZBSUxVUkUQAQ==');

@$core.Deprecated('Use getTodoResponseDescriptor instead')
const GetTodoResponse$json = {
  '1': 'GetTodoResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `GetTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodoResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUb2RvUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZR'
    'IgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24=');

@$core.Deprecated('Use getTodoRequestDescriptor instead')
const GetTodoRequest$json = {
  '1': 'GetTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodoRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUb2RvUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use createTodoResponseDescriptor instead')
const CreateTodoResponse$json = {
  '1': 'CreateTodoResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto.todo.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `CreateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUb2RvUmVzcG9uc2USLQoGc3RhdHVzGAEgASgOMhUucHJvdG8udG9kby52MS5TdG'
    'F0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = {
  '1': 'CreateTodoRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUb2RvUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use getAllTodosRequestDescriptor instead')
const GetAllTodosRequest$json = {
  '1': 'GetAllTodosRequest',
};

/// Descriptor for `GetAllTodosRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTodosRequestDescriptor = $convert.base64Decode(
    'ChJHZXRBbGxUb2Rvc1JlcXVlc3Q=');

@$core.Deprecated('Use getAllTodosResponseDescriptor instead')
const GetAllTodosResponse$json = {
  '1': 'GetAllTodosResponse',
  '2': [
    {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.proto.todo.v1.GetTodoResponse', '10': 'todos'},
  ],
};

/// Descriptor for `GetAllTodosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTodosResponseDescriptor = $convert.base64Decode(
    'ChNHZXRBbGxUb2Rvc1Jlc3BvbnNlEjQKBXRvZG9zGAEgAygLMh4ucHJvdG8udG9kby52MS5HZX'
    'RUb2RvUmVzcG9uc2VSBXRvZG9z');

