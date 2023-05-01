///
//  Generated code. Do not modify.
//  source: tag.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tag.pb.dart' as $2;
export 'tag.pb.dart';

class TagServiceClient extends $grpc.Client {
  static final _$putTag =
      $grpc.ClientMethod<$2.PutTagRequest, $2.PutTagResponse>(
          '/tag.TagService/PutTag',
          ($2.PutTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.PutTagResponse.fromBuffer(value));
  static final _$fetchTag =
      $grpc.ClientMethod<$2.FetchTagRequest, $2.FetchTagResponse>(
          '/tag.TagService/FetchTag',
          ($2.FetchTagRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.FetchTagResponse.fromBuffer(value));

  TagServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.PutTagResponse> putTag($2.PutTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTag, request, options: options);
  }

  $grpc.ResponseFuture<$2.FetchTagResponse> fetchTag($2.FetchTagRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTag, request, options: options);
  }
}

abstract class TagServiceBase extends $grpc.Service {
  $core.String get $name => 'tag.TagService';

  TagServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.PutTagRequest, $2.PutTagResponse>(
        'PutTag',
        putTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PutTagRequest.fromBuffer(value),
        ($2.PutTagResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FetchTagRequest, $2.FetchTagResponse>(
        'FetchTag',
        fetchTag_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FetchTagRequest.fromBuffer(value),
        ($2.FetchTagResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.PutTagResponse> putTag_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PutTagRequest> request) async {
    return putTag(call, await request);
  }

  $async.Future<$2.FetchTagResponse> fetchTag_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FetchTagRequest> request) async {
    return fetchTag(call, await request);
  }

  $async.Future<$2.PutTagResponse> putTag(
      $grpc.ServiceCall call, $2.PutTagRequest request);
  $async.Future<$2.FetchTagResponse> fetchTag(
      $grpc.ServiceCall call, $2.FetchTagRequest request);
}
