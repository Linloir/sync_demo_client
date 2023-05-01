///
//  Generated code. Do not modify.
//  source: category.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'category.pb.dart' as $0;
export 'category.pb.dart';

class CategoryServiceClient extends $grpc.Client {
  static final _$putCategory =
      $grpc.ClientMethod<$0.PutCategoryRequest, $0.PutCategoryResponse>(
          '/category.CategoryService/PutCategory',
          ($0.PutCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PutCategoryResponse.fromBuffer(value));
  static final _$fetchCategory =
      $grpc.ClientMethod<$0.FetchCategoryRequest, $0.FetchCategoryResponse>(
          '/category.CategoryService/FetchCategory',
          ($0.FetchCategoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FetchCategoryResponse.fromBuffer(value));

  CategoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PutCategoryResponse> putCategory(
      $0.PutCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putCategory, request, options: options);
  }

  $grpc.ResponseFuture<$0.FetchCategoryResponse> fetchCategory(
      $0.FetchCategoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchCategory, request, options: options);
  }
}

abstract class CategoryServiceBase extends $grpc.Service {
  $core.String get $name => 'category.CategoryService';

  CategoryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.PutCategoryRequest, $0.PutCategoryResponse>(
            'PutCategory',
            putCategory_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PutCategoryRequest.fromBuffer(value),
            ($0.PutCategoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FetchCategoryRequest, $0.FetchCategoryResponse>(
            'FetchCategory',
            fetchCategory_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FetchCategoryRequest.fromBuffer(value),
            ($0.FetchCategoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PutCategoryResponse> putCategory_Pre($grpc.ServiceCall call,
      $async.Future<$0.PutCategoryRequest> request) async {
    return putCategory(call, await request);
  }

  $async.Future<$0.FetchCategoryResponse> fetchCategory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FetchCategoryRequest> request) async {
    return fetchCategory(call, await request);
  }

  $async.Future<$0.PutCategoryResponse> putCategory(
      $grpc.ServiceCall call, $0.PutCategoryRequest request);
  $async.Future<$0.FetchCategoryResponse> fetchCategory(
      $grpc.ServiceCall call, $0.FetchCategoryRequest request);
}
