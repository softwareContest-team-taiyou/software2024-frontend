//
//  Generated code. Do not modify.
//  source: v1/box/box.proto
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

@$core.Deprecated('Use isLockRequestDescriptor instead')
const isLockRequest$json = {
  '1': 'isLockRequest',
};

/// Descriptor for `isLockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isLockRequestDescriptor = $convert.base64Decode(
    'Cg1pc0xvY2tSZXF1ZXN0');

@$core.Deprecated('Use isLockResponseDescriptor instead')
const isLockResponse$json = {
  '1': 'isLockResponse',
  '2': [
    {'1': 'isLock', '3': 1, '4': 1, '5': 8, '10': 'isLock'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `isLockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isLockResponseDescriptor = $convert.base64Decode(
    'Cg5pc0xvY2tSZXNwb25zZRIWCgZpc0xvY2sYASABKAhSBmlzTG9jaxISCgRuYW1lGAIgASgJUg'
    'RuYW1l');

@$core.Deprecated('Use lockRequestDescriptor instead')
const lockRequest$json = {
  '1': 'lockRequest',
};

/// Descriptor for `lockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockRequestDescriptor = $convert.base64Decode(
    'Cgtsb2NrUmVxdWVzdA==');

@$core.Deprecated('Use lockResponseDescriptor instead')
const lockResponse$json = {
  '1': 'lockResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto.box.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `lockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lockResponseDescriptor = $convert.base64Decode(
    'Cgxsb2NrUmVzcG9uc2USLAoGc3RhdHVzGAEgASgOMhQucHJvdG8uYm94LnYxLlN0YXR1c1IGc3'
    'RhdHVz');

@$core.Deprecated('Use unlockRequestDescriptor instead')
const unlockRequest$json = {
  '1': 'unlockRequest',
};

/// Descriptor for `unlockRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockRequestDescriptor = $convert.base64Decode(
    'Cg11bmxvY2tSZXF1ZXN0');

@$core.Deprecated('Use unlockResponseDescriptor instead')
const unlockResponse$json = {
  '1': 'unlockResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto.box.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `unlockResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockResponseDescriptor = $convert.base64Decode(
    'Cg51bmxvY2tSZXNwb25zZRIsCgZzdGF0dXMYASABKA4yFC5wcm90by5ib3gudjEuU3RhdHVzUg'
    'ZzdGF0dXM=');

