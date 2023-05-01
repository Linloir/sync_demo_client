///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class NestedTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NestedTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  NestedTag._() : super();
  factory NestedTag({
    $core.String? name,
    $core.int? color,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (color != null) {
      _result.color = color;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory NestedTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NestedTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NestedTag clone() => NestedTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NestedTag copyWith(void Function(NestedTag) updates) => super.copyWith((message) => updates(message as NestedTag)) as NestedTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NestedTag create() => NestedTag._();
  NestedTag createEmptyInstance() => create();
  static $pb.PbList<NestedTag> createRepeated() => $pb.PbList<NestedTag>();
  @$core.pragma('dart2js:noInline')
  static NestedTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NestedTag>(create);
  static NestedTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updateAt => $_getI64(2);
  @$pb.TagNumber(3)
  set updateAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get deleteAt => $_getI64(3);
  @$pb.TagNumber(4)
  set deleteAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleteAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteAt() => clearField(4);
}

class NestedCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NestedCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  NestedCategory._() : super();
  factory NestedCategory({
    $core.String? name,
    $core.int? color,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (color != null) {
      _result.color = color;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory NestedCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NestedCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NestedCategory clone() => NestedCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NestedCategory copyWith(void Function(NestedCategory) updates) => super.copyWith((message) => updates(message as NestedCategory)) as NestedCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NestedCategory create() => NestedCategory._();
  NestedCategory createEmptyInstance() => create();
  static $pb.PbList<NestedCategory> createRepeated() => $pb.PbList<NestedCategory>();
  @$core.pragma('dart2js:noInline')
  static NestedCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NestedCategory>(create);
  static NestedCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get color => $_getIZ(1);
  @$pb.TagNumber(2)
  set color($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updateAt => $_getI64(2);
  @$pb.TagNumber(3)
  set updateAt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateAt() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get deleteAt => $_getI64(3);
  @$pb.TagNumber(4)
  set deleteAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeleteAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeleteAt() => clearField(4);
}

class PutTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<NestedCategory>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: NestedCategory.create)
    ..pc<NestedTag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: NestedTag.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  PutTaskRequest._() : super();
  factory PutTaskRequest({
    $core.String? uuid,
    $core.String? title,
    $core.bool? status,
    NestedCategory? category,
    $core.Iterable<NestedTag>? tags,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (title != null) {
      _result.title = title;
    }
    if (status != null) {
      _result.status = status;
    }
    if (category != null) {
      _result.category = category;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory PutTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutTaskRequest clone() => PutTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutTaskRequest copyWith(void Function(PutTaskRequest) updates) => super.copyWith((message) => updates(message as PutTaskRequest)) as PutTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutTaskRequest create() => PutTaskRequest._();
  PutTaskRequest createEmptyInstance() => create();
  static $pb.PbList<PutTaskRequest> createRepeated() => $pb.PbList<PutTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static PutTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutTaskRequest>(create);
  static PutTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get status => $_getBF(2);
  @$pb.TagNumber(3)
  set status($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  NestedCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(NestedCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);
  @$pb.TagNumber(4)
  NestedCategory ensureCategory() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<NestedTag> get tags => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updateAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get deleteAt => $_getI64(6);
  @$pb.TagNumber(7)
  set deleteAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeleteAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeleteAt() => clearField(7);
}

class PutTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PutTaskResponse._() : super();
  factory PutTaskResponse() => create();
  factory PutTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutTaskResponse clone() => PutTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutTaskResponse copyWith(void Function(PutTaskResponse) updates) => super.copyWith((message) => updates(message as PutTaskResponse)) as PutTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutTaskResponse create() => PutTaskResponse._();
  PutTaskResponse createEmptyInstance() => create();
  static $pb.PbList<PutTaskResponse> createRepeated() => $pb.PbList<PutTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static PutTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutTaskResponse>(create);
  static PutTaskResponse? _defaultInstance;
}

class TaskInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TaskInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uuid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOM<NestedCategory>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', subBuilder: NestedCategory.create)
    ..pc<NestedTag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: NestedTag.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TaskInfo._() : super();
  factory TaskInfo({
    $core.String? uuid,
    $core.String? title,
    $core.bool? status,
    NestedCategory? category,
    $core.Iterable<NestedTag>? tags,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? deleteAt,
  }) {
    final _result = create();
    if (uuid != null) {
      _result.uuid = uuid;
    }
    if (title != null) {
      _result.title = title;
    }
    if (status != null) {
      _result.status = status;
    }
    if (category != null) {
      _result.category = category;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (deleteAt != null) {
      _result.deleteAt = deleteAt;
    }
    return _result;
  }
  factory TaskInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TaskInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TaskInfo clone() => TaskInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TaskInfo copyWith(void Function(TaskInfo) updates) => super.copyWith((message) => updates(message as TaskInfo)) as TaskInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TaskInfo create() => TaskInfo._();
  TaskInfo createEmptyInstance() => create();
  static $pb.PbList<TaskInfo> createRepeated() => $pb.PbList<TaskInfo>();
  @$core.pragma('dart2js:noInline')
  static TaskInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskInfo>(create);
  static TaskInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get status => $_getBF(2);
  @$pb.TagNumber(3)
  set status($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);

  @$pb.TagNumber(4)
  NestedCategory get category => $_getN(3);
  @$pb.TagNumber(4)
  set category(NestedCategory v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);
  @$pb.TagNumber(4)
  NestedCategory ensureCategory() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<NestedTag> get tags => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updateAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updateAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get deleteAt => $_getI64(6);
  @$pb.TagNumber(7)
  set deleteAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeleteAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeleteAt() => clearField(7);
}

class FetchTaskRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTaskRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  FetchTaskRequest._() : super();
  factory FetchTaskRequest({
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory FetchTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTaskRequest clone() => FetchTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTaskRequest copyWith(void Function(FetchTaskRequest) updates) => super.copyWith((message) => updates(message as FetchTaskRequest)) as FetchTaskRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTaskRequest create() => FetchTaskRequest._();
  FetchTaskRequest createEmptyInstance() => create();
  static $pb.PbList<FetchTaskRequest> createRepeated() => $pb.PbList<FetchTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTaskRequest>(create);
  static FetchTaskRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastFetchAt => $_getI64(0);
  @$pb.TagNumber(2)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastFetchAt() => $_has(0);
  @$pb.TagNumber(2)
  void clearLastFetchAt() => clearField(2);
}

class FetchTaskResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTaskResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'task'), createEmptyInstance: create)
    ..pc<TaskInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: TaskInfo.create)
    ..hasRequiredFields = false
  ;

  FetchTaskResponse._() : super();
  factory FetchTaskResponse({
    $core.Iterable<TaskInfo>? tasks,
  }) {
    final _result = create();
    if (tasks != null) {
      _result.tasks.addAll(tasks);
    }
    return _result;
  }
  factory FetchTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTaskResponse clone() => FetchTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTaskResponse copyWith(void Function(FetchTaskResponse) updates) => super.copyWith((message) => updates(message as FetchTaskResponse)) as FetchTaskResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTaskResponse create() => FetchTaskResponse._();
  FetchTaskResponse createEmptyInstance() => create();
  static $pb.PbList<FetchTaskResponse> createRepeated() => $pb.PbList<FetchTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTaskResponse>(create);
  static FetchTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TaskInfo> get tasks => $_getList(0);
}

