//
//  Generated code. Do not modify.
//  source: v1/boxkey/boxkey.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'boxkey.pbenum.dart';

export 'boxkey.pbenum.dart';

class InitCreateRequest extends $pb.GeneratedMessage {
  factory InitCreateRequest({
    $core.String? keyId,
    $core.String? boxId,
    $core.String? boxName,
    $core.String? keyName,
  }) {
    final $result = create();
    if (keyId != null) {
      $result.keyId = keyId;
    }
    if (boxId != null) {
      $result.boxId = boxId;
    }
    if (boxName != null) {
      $result.boxName = boxName;
    }
    if (keyName != null) {
      $result.keyName = keyName;
    }
    return $result;
  }
  InitCreateRequest._() : super();
  factory InitCreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitCreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitCreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.boxkey.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyId', protoName: 'keyId')
    ..aOS(2, _omitFieldNames ? '' : 'boxId', protoName: 'boxId')
    ..aOS(3, _omitFieldNames ? '' : 'boxName', protoName: 'boxName')
    ..aOS(4, _omitFieldNames ? '' : 'keyName', protoName: 'keyName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitCreateRequest clone() => InitCreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitCreateRequest copyWith(void Function(InitCreateRequest) updates) => super.copyWith((message) => updates(message as InitCreateRequest)) as InitCreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitCreateRequest create() => InitCreateRequest._();
  InitCreateRequest createEmptyInstance() => create();
  static $pb.PbList<InitCreateRequest> createRepeated() => $pb.PbList<InitCreateRequest>();
  @$core.pragma('dart2js:noInline')
  static InitCreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitCreateRequest>(create);
  static InitCreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get boxId => $_getSZ(1);
  @$pb.TagNumber(2)
  set boxId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoxId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get boxName => $_getSZ(2);
  @$pb.TagNumber(3)
  set boxName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBoxName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBoxName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get keyName => $_getSZ(3);
  @$pb.TagNumber(4)
  set keyName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKeyName() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeyName() => clearField(4);
}

class InitCreateResponse extends $pb.GeneratedMessage {
  factory InitCreateResponse({
    Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  InitCreateResponse._() : super();
  factory InitCreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitCreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitCreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.boxkey.v1'), createEmptyInstance: create)
    ..e<Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.SUCCESS, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitCreateResponse clone() => InitCreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitCreateResponse copyWith(void Function(InitCreateResponse) updates) => super.copyWith((message) => updates(message as InitCreateResponse)) as InitCreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitCreateResponse create() => InitCreateResponse._();
  InitCreateResponse createEmptyInstance() => create();
  static $pb.PbList<InitCreateResponse> createRepeated() => $pb.PbList<InitCreateResponse>();
  @$core.pragma('dart2js:noInline')
  static InitCreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitCreateResponse>(create);
  static InitCreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
