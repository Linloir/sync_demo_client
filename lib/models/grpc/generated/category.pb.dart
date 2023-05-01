///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class PutCategoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutCategoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'category'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  PutCategoryRequest._() : super();
  factory PutCategoryRequest({
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
  factory PutCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutCategoryRequest clone() => PutCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutCategoryRequest copyWith(void Function(PutCategoryRequest) updates) => super.copyWith((message) => updates(message as PutCategoryRequest)) as PutCategoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutCategoryRequest create() => PutCategoryRequest._();
  PutCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<PutCategoryRequest> createRepeated() => $pb.PbList<PutCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static PutCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutCategoryRequest>(create);
  static PutCategoryRequest? _defaultInstance;

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

class PutCategoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PutCategoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'category'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PutCategoryResponse._() : super();
  factory PutCategoryResponse() => create();
  factory PutCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PutCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PutCategoryResponse clone() => PutCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PutCategoryResponse copyWith(void Function(PutCategoryResponse) updates) => super.copyWith((message) => updates(message as PutCategoryResponse)) as PutCategoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PutCategoryResponse create() => PutCategoryResponse._();
  PutCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<PutCategoryResponse> createRepeated() => $pb.PbList<PutCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static PutCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PutCategoryResponse>(create);
  static PutCategoryResponse? _defaultInstance;
}

class CategoryInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CategoryInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'category'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.O3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateAt', protoName: 'updateAt')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleteAt', protoName: 'deleteAt')
    ..hasRequiredFields = false
  ;

  CategoryInfo._() : super();
  factory CategoryInfo({
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
  factory CategoryInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategoryInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategoryInfo clone() => CategoryInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategoryInfo copyWith(void Function(CategoryInfo) updates) => super.copyWith((message) => updates(message as CategoryInfo)) as CategoryInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CategoryInfo create() => CategoryInfo._();
  CategoryInfo createEmptyInstance() => create();
  static $pb.PbList<CategoryInfo> createRepeated() => $pb.PbList<CategoryInfo>();
  @$core.pragma('dart2js:noInline')
  static CategoryInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategoryInfo>(create);
  static CategoryInfo? _defaultInstance;

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

class FetchCategoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchCategoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'category'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFetchAt', protoName: 'lastFetchAt')
    ..hasRequiredFields = false
  ;

  FetchCategoryRequest._() : super();
  factory FetchCategoryRequest({
    $fixnum.Int64? lastFetchAt,
  }) {
    final _result = create();
    if (lastFetchAt != null) {
      _result.lastFetchAt = lastFetchAt;
    }
    return _result;
  }
  factory FetchCategoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategoryRequest clone() => FetchCategoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategoryRequest copyWith(void Function(FetchCategoryRequest) updates) => super.copyWith((message) => updates(message as FetchCategoryRequest)) as FetchCategoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCategoryRequest create() => FetchCategoryRequest._();
  FetchCategoryRequest createEmptyInstance() => create();
  static $pb.PbList<FetchCategoryRequest> createRepeated() => $pb.PbList<FetchCategoryRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchCategoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategoryRequest>(create);
  static FetchCategoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lastFetchAt => $_getI64(0);
  @$pb.TagNumber(1)
  set lastFetchAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastFetchAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastFetchAt() => clearField(1);
}

class FetchCategoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FetchCategoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'category'), createEmptyInstance: create)
    ..pc<CategoryInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: CategoryInfo.create)
    ..hasRequiredFields = false
  ;

  FetchCategoryResponse._() : super();
  factory FetchCategoryResponse({
    $core.Iterable<CategoryInfo>? categories,
  }) {
    final _result = create();
    if (categories != null) {
      _result.categories.addAll(categories);
    }
    return _result;
  }
  factory FetchCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchCategoryResponse clone() => FetchCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchCategoryResponse copyWith(void Function(FetchCategoryResponse) updates) => super.copyWith((message) => updates(message as FetchCategoryResponse)) as FetchCategoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FetchCategoryResponse create() => FetchCategoryResponse._();
  FetchCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<FetchCategoryResponse> createRepeated() => $pb.PbList<FetchCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchCategoryResponse>(create);
  static FetchCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CategoryInfo> get categories => $_getList(0);
}

