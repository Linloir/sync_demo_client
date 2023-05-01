///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use nestedTagDescriptor instead')
const NestedTag$json = const {
  '1': 'NestedTag',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'updateAt', '3': 3, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `NestedTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nestedTagDescriptor = $convert.base64Decode('CglOZXN0ZWRUYWcSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoBVIFY29sb3ISGgoIdXBkYXRlQXQYAyABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAQgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use nestedCategoryDescriptor instead')
const NestedCategory$json = const {
  '1': 'NestedCategory',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'color', '3': 2, '4': 1, '5': 5, '10': 'color'},
    const {'1': 'updateAt', '3': 3, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 4, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `NestedCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nestedCategoryDescriptor = $convert.base64Decode('Cg5OZXN0ZWRDYXRlZ29yeRISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWNvbG9yGAIgASgFUgVjb2xvchIaCgh1cGRhdGVBdBgDIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYBCABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use putTaskRequestDescriptor instead')
const PutTaskRequest$json = const {
  '1': 'PutTaskRequest',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'category', '3': 4, '4': 1, '5': 11, '6': '.task.NestedCategory', '10': 'category'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 11, '6': '.task.NestedTag', '10': 'tags'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `PutTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putTaskRequestDescriptor = $convert.base64Decode('Cg5QdXRUYXNrUmVxdWVzdBISCgR1dWlkGAEgASgJUgR1dWlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIWCgZzdGF0dXMYAyABKAhSBnN0YXR1cxIwCghjYXRlZ29yeRgEIAEoCzIULnRhc2suTmVzdGVkQ2F0ZWdvcnlSCGNhdGVnb3J5EiMKBHRhZ3MYBSADKAsyDy50YXNrLk5lc3RlZFRhZ1IEdGFncxIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use putTaskResponseDescriptor instead')
const PutTaskResponse$json = const {
  '1': 'PutTaskResponse',
};

/// Descriptor for `PutTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putTaskResponseDescriptor = $convert.base64Decode('Cg9QdXRUYXNrUmVzcG9uc2U=');
@$core.Deprecated('Use taskInfoDescriptor instead')
const TaskInfo$json = const {
  '1': 'TaskInfo',
  '2': const [
    const {'1': 'uuid', '3': 1, '4': 1, '5': 9, '10': 'uuid'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'status', '3': 3, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'category', '3': 4, '4': 1, '5': 11, '6': '.task.NestedCategory', '10': 'category'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 11, '6': '.task.NestedTag', '10': 'tags'},
    const {'1': 'updateAt', '3': 6, '4': 1, '5': 3, '10': 'updateAt'},
    const {'1': 'deleteAt', '3': 7, '4': 1, '5': 3, '9': 0, '10': 'deleteAt', '17': true},
  ],
  '8': const [
    const {'1': '_deleteAt'},
  ],
};

/// Descriptor for `TaskInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskInfoDescriptor = $convert.base64Decode('CghUYXNrSW5mbxISCgR1dWlkGAEgASgJUgR1dWlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIWCgZzdGF0dXMYAyABKAhSBnN0YXR1cxIwCghjYXRlZ29yeRgEIAEoCzIULnRhc2suTmVzdGVkQ2F0ZWdvcnlSCGNhdGVnb3J5EiMKBHRhZ3MYBSADKAsyDy50YXNrLk5lc3RlZFRhZ1IEdGFncxIaCgh1cGRhdGVBdBgGIAEoA1IIdXBkYXRlQXQSHwoIZGVsZXRlQXQYByABKANIAFIIZGVsZXRlQXSIAQFCCwoJX2RlbGV0ZUF0');
@$core.Deprecated('Use fetchTaskRequestDescriptor instead')
const FetchTaskRequest$json = const {
  '1': 'FetchTaskRequest',
  '2': const [
    const {'1': 'lastFetchAt', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `FetchTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTaskRequestDescriptor = $convert.base64Decode('ChBGZXRjaFRhc2tSZXF1ZXN0EiUKC2xhc3RGZXRjaEF0GAIgASgDSABSC2xhc3RGZXRjaEF0iAEBQg4KDF9sYXN0RmV0Y2hBdA==');
@$core.Deprecated('Use fetchTaskResponseDescriptor instead')
const FetchTaskResponse$json = const {
  '1': 'FetchTaskResponse',
  '2': const [
    const {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.task.TaskInfo', '10': 'tasks'},
  ],
};

/// Descriptor for `FetchTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTaskResponseDescriptor = $convert.base64Decode('ChFGZXRjaFRhc2tSZXNwb25zZRIkCgV0YXNrcxgBIAMoCzIOLnRhc2suVGFza0luZm9SBXRhc2tz');
