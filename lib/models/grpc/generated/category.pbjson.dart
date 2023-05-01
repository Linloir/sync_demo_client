///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use putCategoryRequestDescriptor instead')
const PutCategoryRequest$json = const {
  '1': 'PutCategoryRequest',
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

/// Descriptor for `PutCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putCategoryRequestDescriptor = $convert.base64Decode('ChJQdXRDYXRlZ29yeVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoBVIFY29sb3ISGgoIdXBkYXRlQXQYAyABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAQgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use putCategoryResponseDescriptor instead')
const PutCategoryResponse$json = const {
  '1': 'PutCategoryResponse',
};

/// Descriptor for `PutCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putCategoryResponseDescriptor = $convert.base64Decode('ChNQdXRDYXRlZ29yeVJlc3BvbnNl');
@$core.Deprecated('Use categoryInfoDescriptor instead')
const CategoryInfo$json = const {
  '1': 'CategoryInfo',
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

/// Descriptor for `CategoryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categoryInfoDescriptor = $convert.base64Decode('CgxDYXRlZ29yeUluZm8SEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVjb2xvchgCIAEoBVIFY29sb3ISGgoIdXBkYXRlQXQYAyABKANSCHVwZGF0ZUF0Eh8KCGRlbGV0ZUF0GAQgASgDSABSCGRlbGV0ZUF0iAEBQgsKCV9kZWxldGVBdA==');
@$core.Deprecated('Use fetchCategoryRequestDescriptor instead')
const FetchCategoryRequest$json = const {
  '1': 'FetchCategoryRequest',
  '2': const [
    const {'1': 'lastFetchAt', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `FetchCategoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategoryRequestDescriptor = $convert.base64Decode('ChRGZXRjaENhdGVnb3J5UmVxdWVzdBIlCgtsYXN0RmV0Y2hBdBgBIAEoA0gAUgtsYXN0RmV0Y2hBdIgBAUIOCgxfbGFzdEZldGNoQXQ=');
@$core.Deprecated('Use fetchCategoryResponseDescriptor instead')
const FetchCategoryResponse$json = const {
  '1': 'FetchCategoryResponse',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.category.CategoryInfo', '10': 'categories'},
  ],
};

/// Descriptor for `FetchCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchCategoryResponseDescriptor = $convert.base64Decode('ChVGZXRjaENhdGVnb3J5UmVzcG9uc2USNgoKY2F0ZWdvcmllcxgBIAMoCzIWLmNhdGVnb3J5LkNhdGVnb3J5SW5mb1IKY2F0ZWdvcmllcw==');
