///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class PutTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutTagRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  PutTagRequest._() : super();
  factory PutTagRequest({
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
  factory PutTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutTagRequest clone() => PutTagRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutTagRequest copyWith(void Function(PutTagRequest) updates) => super.copyWith((message) => updates(message as PutTagRequest)) as PutTagRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutTagRequest create() => PutTagRequest._();
  PutTagRequest createEmptyInstance() => create();
  static $pb.PbList<PutTagRequest> createRepeated() => $pb.PbList<PutTagRequest>();
  @$core.pragma('dart2js:noInline')
  static PutTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutTagRequest>(create);
  static PutTagRequest? _defaultInstance;

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

class PutTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutTagResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PutTagResponse._() : super();
  factory PutTagResponse() => create();
  factory PutTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutTagResponse clone() => PutTagResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutTagResponse copyWith(void Function(PutTagResponse) updates) => super.copyWith((message) => updates(message as PutTagResponse)) as PutTagResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutTagResponse create() => PutTagResponse._();
  PutTagResponse createEmptyInstance() => create();
  static $pb.PbList<PutTagResponse> createRepeated() => $pb.PbList<PutTagResponse>();
  @$core.pragma('dart2js:noInline')
  static PutTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutTagResponse>(create);
  static PutTagResponse? _defaultInstance;
}

class TagInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TagInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  TagInfo._() : super();
  factory TagInfo({
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
  factory TagInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TagInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TagInfo clone() => TagInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TagInfo copyWith(void Function(TagInfo) updates) => super.copyWith((message) => updates(message as TagInfo)) as TagInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TagInfo create() => TagInfo._();
  TagInfo createEmptyInstance() => create();
  static $pb.PbList<TagInfo> createRepeated() => $pb.PbList<TagInfo>();
  @$core.pragma('dart2js:noInline')
  static TagInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TagInfo>(create);
  static TagInfo? _defaultInstance;

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

class FetchTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTagRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  FetchTagRequest._() : super();
  factory FetchTagRequest({
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory FetchTagRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTagRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTagRequest clone() => FetchTagRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTagRequest copyWith(void Function(FetchTagRequest) updates) => super.copyWith((message) => updates(message as FetchTagRequest)) as FetchTagRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTagRequest create() => FetchTagRequest._();
  FetchTagRequest createEmptyInstance() => create();
  static $pb.PbList<FetchTagRequest> createRepeated() => $pb.PbList<FetchTagRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchTagRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTagRequest>(create);
  static FetchTagRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lastFetchAt => $_getI64(0);
  @$pb.TagNumber(1)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastFetchAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastFetchAt() => clearField(1);
}

class FetchTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchTagResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'tag'), createEmptyInstance: create)
    ..pc<TagInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags', $pb.PbFieldType.PM, subBuilder: TagInfo.create)
    ..hasRequiredFields = false
  ;

  FetchTagResponse._() : super();
  factory FetchTagResponse({
    $core.Iterable<TagInfo>? tags,
  }) {
    final _result = create();
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    return _result;
  }
  factory FetchTagResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchTagResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchTagResponse clone() => FetchTagResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchTagResponse copyWith(void Function(FetchTagResponse) updates) => super.copyWith((message) => updates(message as FetchTagResponse)) as FetchTagResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchTagResponse create() => FetchTagResponse._();
  FetchTagResponse createEmptyInstance() => create();
  static $pb.PbList<FetchTagResponse> createRepeated() => $pb.PbList<FetchTagResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchTagResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchTagResponse>(create);
  static FetchTagResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TagInfo> get tags => $_getList(0);
}

