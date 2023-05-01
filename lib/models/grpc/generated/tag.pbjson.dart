///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use putTagRequestDescriptor instead')
const PutTagRequest$json = const {
  '1': 'PutTagRequest',
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

/// Descriptor for `PutTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putTagRequestDescriptor = $convert.base64Decode('Cg1QdXRUYWdSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSFAoFY29sb3IYAiABKAVSBWNvbG9yEhoKCHVwZGF0ZUF0GAMgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgEIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use putTagResponseDescriptor instead')
const PutTagResponse$json = const {
  '1': 'PutTagResponse',
};

/// Descriptor for `PutTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List putTagResponseDescriptor = $convert.base64Decode('Cg5QdXRUYWdSZXNwb25zZQ==');
@$core.Deprecated('Use tagInfoDescriptor instead')
const TagInfo$json = const {
  '1': 'TagInfo',
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

/// Descriptor for `TagInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagInfoDescriptor = $convert.base64Decode('CgdUYWdJbmZvEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFY29sb3IYAiABKAVSBWNvbG9yEhoKCHVwZGF0ZUF0GAMgASgDUgh1cGRhdGVBdBIfCghkZWxldGVBdBgEIAEoA0gAUghkZWxldGVBdIgBAUILCglfZGVsZXRlQXQ=');
@$core.Deprecated('Use fetchTagRequestDescriptor instead')
const FetchTagRequest$json = const {
  '1': 'FetchTagRequest',
  '2': const [
    const {'1': 'lastFetchAt', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'lastFetchAt', '17': true},
  ],
  '8': const [
    const {'1': '_lastFetchAt'},
  ],
};

/// Descriptor for `FetchTagRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTagRequestDescriptor = $convert.base64Decode('Cg9GZXRjaFRhZ1JlcXVlc3QSJQoLbGFzdEZldGNoQXQYASABKANIAFILbGFzdEZldGNoQXSIAQFCDgoMX2xhc3RGZXRjaEF0');
@$core.Deprecated('Use fetchTagResponseDescriptor instead')
const FetchTagResponse$json = const {
  '1': 'FetchTagResponse',
  '2': const [
    const {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.tag.TagInfo', '10': 'tags'},
  ],
};

/// Descriptor for `FetchTagResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchTagResponseDescriptor = $convert.base64Decode('ChBGZXRjaFRhZ1Jlc3BvbnNlEiAKBHRhZ3MYASADKAsyDC50YWcuVGFnSW5mb1IEdGFncw==');
