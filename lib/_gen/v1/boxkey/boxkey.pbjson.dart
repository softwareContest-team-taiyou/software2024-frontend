//
//  Generated code. Do not modify.
//  source: v1/boxkey/boxkey.proto
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

@$core.Deprecated('Use initCreateRequestDescriptor instead')
const InitCreateRequest$json = {
  '1': 'InitCreateRequest',
  '2': [
    {'1': 'keyId', '3': 1, '4': 1, '5': 9, '10': 'keyId'},
    {'1': 'boxId', '3': 2, '4': 1, '5': 9, '10': 'boxId'},
    {'1': 'boxName', '3': 3, '4': 1, '5': 9, '10': 'boxName'},
    {'1': 'keyName', '3': 4, '4': 1, '5': 9, '10': 'keyName'},
  ],
};

/// Descriptor for `InitCreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initCreateRequestDescriptor = $convert.base64Decode(
    'ChFJbml0Q3JlYXRlUmVxdWVzdBIUCgVrZXlJZBgBIAEoCVIFa2V5SWQSFAoFYm94SWQYAiABKA'
    'lSBWJveElkEhgKB2JveE5hbWUYAyABKAlSB2JveE5hbWUSGAoHa2V5TmFtZRgEIAEoCVIHa2V5'
    'TmFtZQ==');

@$core.Deprecated('Use initCreateResponseDescriptor instead')
const InitCreateResponse$json = {
  '1': 'InitCreateResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.proto.boxkey.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `InitCreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initCreateResponseDescriptor = $convert.base64Decode(
    'ChJJbml0Q3JlYXRlUmVzcG9uc2USLwoGc3RhdHVzGAEgASgOMhcucHJvdG8uYm94a2V5LnYxLl'
    'N0YXR1c1IGc3RhdHVz');

