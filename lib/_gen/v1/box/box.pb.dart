//
//  Generated code. Do not modify.
//  source: v1/box/box.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'box.pbenum.dart';

export 'box.pbenum.dart';

class isLockRequest extends $pb.GeneratedMessage {
  factory isLockRequest() => create();
  isLockRequest._() : super();
  factory isLockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory isLockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'isLockRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  isLockRequest clone() => isLockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  isLockRequest copyWith(void Function(isLockRequest) updates) => super.copyWith((message) => updates(message as isLockRequest)) as isLockRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static isLockRequest create() => isLockRequest._();
  isLockRequest createEmptyInstance() => create();
  static $pb.PbList<isLockRequest> createRepeated() => $pb.PbList<isLockRequest>();
  @$core.pragma('dart2js:noInline')
  static isLockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<isLockRequest>(create);
  static isLockRequest? _defaultInstance;
}

class isLockResponse extends $pb.GeneratedMessage {
  factory isLockResponse({
    $core.bool? isLock,
    $core.String? name,
  }) {
    final $result = create();
    if (isLock != null) {
      $result.isLock = isLock;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  isLockResponse._() : super();
  factory isLockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory isLockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'isLockResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isLock', protoName: 'isLock')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  isLockResponse clone() => isLockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  isLockResponse copyWith(void Function(isLockResponse) updates) => super.copyWith((message) => updates(message as isLockResponse)) as isLockResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static isLockResponse create() => isLockResponse._();
  isLockResponse createEmptyInstance() => create();
  static $pb.PbList<isLockResponse> createRepeated() => $pb.PbList<isLockResponse>();
  @$core.pragma('dart2js:noInline')
  static isLockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<isLockResponse>(create);
  static isLockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isLock => $_getBF(0);
  @$pb.TagNumber(1)
  set isLock($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsLock() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsLock() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class lockRequest extends $pb.GeneratedMessage {
  factory lockRequest() => create();
  lockRequest._() : super();
  factory lockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory lockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'lockRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  lockRequest clone() => lockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  lockRequest copyWith(void Function(lockRequest) updates) => super.copyWith((message) => updates(message as lockRequest)) as lockRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static lockRequest create() => lockRequest._();
  lockRequest createEmptyInstance() => create();
  static $pb.PbList<lockRequest> createRepeated() => $pb.PbList<lockRequest>();
  @$core.pragma('dart2js:noInline')
  static lockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<lockRequest>(create);
  static lockRequest? _defaultInstance;
}

class lockResponse extends $pb.GeneratedMessage {
  factory lockResponse({
    Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  lockResponse._() : super();
  factory lockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory lockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'lockResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..e<Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.SUCCESS, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  lockResponse clone() => lockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  lockResponse copyWith(void Function(lockResponse) updates) => super.copyWith((message) => updates(message as lockResponse)) as lockResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static lockResponse create() => lockResponse._();
  lockResponse createEmptyInstance() => create();
  static $pb.PbList<lockResponse> createRepeated() => $pb.PbList<lockResponse>();
  @$core.pragma('dart2js:noInline')
  static lockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<lockResponse>(create);
  static lockResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class unlockRequest extends $pb.GeneratedMessage {
  factory unlockRequest() => create();
  unlockRequest._() : super();
  factory unlockRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory unlockRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'unlockRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  unlockRequest clone() => unlockRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  unlockRequest copyWith(void Function(unlockRequest) updates) => super.copyWith((message) => updates(message as unlockRequest)) as unlockRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static unlockRequest create() => unlockRequest._();
  unlockRequest createEmptyInstance() => create();
  static $pb.PbList<unlockRequest> createRepeated() => $pb.PbList<unlockRequest>();
  @$core.pragma('dart2js:noInline')
  static unlockRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<unlockRequest>(create);
  static unlockRequest? _defaultInstance;
}

class unlockResponse extends $pb.GeneratedMessage {
  factory unlockResponse({
    Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  unlockResponse._() : super();
  factory unlockResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory unlockResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'unlockResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.box.v1'), createEmptyInstance: create)
    ..e<Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.SUCCESS, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  unlockResponse clone() => unlockResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  unlockResponse copyWith(void Function(unlockResponse) updates) => super.copyWith((message) => updates(message as unlockResponse)) as unlockResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static unlockResponse create() => unlockResponse._();
  unlockResponse createEmptyInstance() => create();
  static $pb.PbList<unlockResponse> createRepeated() => $pb.PbList<unlockResponse>();
  @$core.pragma('dart2js:noInline')
  static unlockResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<unlockResponse>(create);
  static unlockResponse? _defaultInstance;

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
