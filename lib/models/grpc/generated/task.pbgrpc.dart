///
//  Generated code. Do not modify.
//  source: task.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'task.pb.dart' as $1;
export 'task.pb.dart';

class TaskServiceClient extends $grpc.Client {
  static final _$putTask =
      $grpc.ClientMethod<$1.PutTaskRequest, $1.PutTaskResponse>(
          '/task.TaskService/PutTask',
          ($1.PutTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PutTaskResponse.fromBuffer(value));
  static final _$fetchTask =
      $grpc.ClientMethod<$1.FetchTaskRequest, $1.FetchTaskResponse>(
          '/task.TaskService/FetchTask',
          ($1.FetchTaskRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.FetchTaskResponse.fromBuffer(value));

  TaskServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.PutTaskResponse> putTask($1.PutTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.FetchTaskResponse> fetchTask(
      $1.FetchTaskRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchTask, request, options: options);
  }
}

abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'task.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.PutTaskRequest, $1.PutTaskResponse>(
        'PutTask',
        putTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PutTaskRequest.fromBuffer(value),
        ($1.PutTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.FetchTaskRequest, $1.FetchTaskResponse>(
        'FetchTask',
        fetchTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.FetchTaskRequest.fromBuffer(value),
        ($1.FetchTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.PutTaskResponse> putTask_Pre(
      $grpc.ServiceCall call, $async.Future<$1.PutTaskRequest> request) async {
    return putTask(call, await request);
  }

  $async.Future<$1.FetchTaskResponse> fetchTask_Pre($grpc.ServiceCall call,
      $async.Future<$1.FetchTaskRequest> request) async {
    return fetchTask(call, await request);
  }

  $async.Future<$1.PutTaskResponse> putTask(
      $grpc.ServiceCall call, $1.PutTaskRequest request);
  $async.Future<$1.FetchTaskResponse> fetchTask(
      $grpc.ServiceCall call, $1.FetchTaskRequest request);
}
