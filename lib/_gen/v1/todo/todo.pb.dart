//
//  Generated code. Do not modify.
//  source: v1/todo/todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'todo.pbenum.dart';

export 'todo.pbenum.dart';

/// Response message for getting a todo item
class GetTodoResponse extends $pb.GeneratedMessage {
  factory GetTodoResponse({
    $core.int? id,
    $core.String? title,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  GetTodoResponse._() : super();
  factory GetTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoResponse clone() => GetTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoResponse copyWith(void Function(GetTodoResponse) updates) => super.copyWith((message) => updates(message as GetTodoResponse)) as GetTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTodoResponse create() => GetTodoResponse._();
  GetTodoResponse createEmptyInstance() => create();
  static $pb.PbList<GetTodoResponse> createRepeated() => $pb.PbList<GetTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoResponse>(create);
  static GetTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

/// Request message for getting a todo item
class GetTodoRequest extends $pb.GeneratedMessage {
  factory GetTodoRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetTodoRequest._() : super();
  factory GetTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTodoRequest clone() => GetTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTodoRequest copyWith(void Function(GetTodoRequest) updates) => super.copyWith((message) => updates(message as GetTodoRequest)) as GetTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTodoRequest create() => GetTodoRequest._();
  GetTodoRequest createEmptyInstance() => create();
  static $pb.PbList<GetTodoRequest> createRepeated() => $pb.PbList<GetTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTodoRequest>(create);
  static GetTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

/// Response message for creating a todo item
class CreateTodoResponse extends $pb.GeneratedMessage {
  factory CreateTodoResponse({
    Status? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  CreateTodoResponse._() : super();
  factory CreateTodoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTodoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..e<Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.SUCCESS, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoResponse clone() => CreateTodoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoResponse copyWith(void Function(CreateTodoResponse) updates) => super.copyWith((message) => updates(message as CreateTodoResponse)) as CreateTodoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse create() => CreateTodoResponse._();
  CreateTodoResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTodoResponse> createRepeated() => $pb.PbList<CreateTodoResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoResponse>(create);
  static CreateTodoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

/// Request message for creating a todo item
class CreateTodoRequest extends $pb.GeneratedMessage {
  factory CreateTodoRequest({
    $core.String? title,
    $core.String? description,
  }) {
    final $result = create();
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreateTodoRequest._() : super();
  factory CreateTodoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTodoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTodoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTodoRequest clone() => CreateTodoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTodoRequest copyWith(void Function(CreateTodoRequest) updates) => super.copyWith((message) => updates(message as CreateTodoRequest)) as CreateTodoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest create() => CreateTodoRequest._();
  CreateTodoRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTodoRequest> createRepeated() => $pb.PbList<CreateTodoRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTodoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTodoRequest>(create);
  static CreateTodoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class GetAllTodosRequest extends $pb.GeneratedMessage {
  factory GetAllTodosRequest() => create();
  GetAllTodosRequest._() : super();
  factory GetAllTodosRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTodosRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTodosRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTodosRequest clone() => GetAllTodosRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTodosRequest copyWith(void Function(GetAllTodosRequest) updates) => super.copyWith((message) => updates(message as GetAllTodosRequest)) as GetAllTodosRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTodosRequest create() => GetAllTodosRequest._();
  GetAllTodosRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllTodosRequest> createRepeated() => $pb.PbList<GetAllTodosRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllTodosRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTodosRequest>(create);
  static GetAllTodosRequest? _defaultInstance;
}

class GetAllTodosResponse extends $pb.GeneratedMessage {
  factory GetAllTodosResponse({
    $core.Iterable<GetTodoResponse>? todos,
  }) {
    final $result = create();
    if (todos != null) {
      $result.todos.addAll(todos);
    }
    return $result;
  }
  GetAllTodosResponse._() : super();
  factory GetAllTodosResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTodosResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTodosResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto.todo.v1'), createEmptyInstance: create)
    ..pc<GetTodoResponse>(1, _omitFieldNames ? '' : 'todos', $pb.PbFieldType.PM, subBuilder: GetTodoResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTodosResponse clone() => GetAllTodosResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTodosResponse copyWith(void Function(GetAllTodosResponse) updates) => super.copyWith((message) => updates(message as GetAllTodosResponse)) as GetAllTodosResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTodosResponse create() => GetAllTodosResponse._();
  GetAllTodosResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTodosResponse> createRepeated() => $pb.PbList<GetAllTodosResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTodosResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTodosResponse>(create);
  static GetAllTodosResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetTodoResponse> get todos => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
