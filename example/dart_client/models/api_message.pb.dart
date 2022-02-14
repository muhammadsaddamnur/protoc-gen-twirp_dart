///
//  Generated code. Do not modify.
//  source: api_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class HistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CoinbitPublicApi'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'symbol')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HistoryRequest._() : super();
  factory HistoryRequest({
    $core.String? symbol,
    $core.String? interval,
    $fixnum.Int64? startTime,
    $fixnum.Int64? endTime,
    $core.int? limit,
  }) {
    final _result = create();
    if (symbol != null) {
      _result.symbol = symbol;
    }
    if (interval != null) {
      _result.interval = interval;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory HistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryRequest clone() => HistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryRequest copyWith(void Function(HistoryRequest) updates) => super.copyWith((message) => updates(message as HistoryRequest)) as HistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryRequest create() => HistoryRequest._();
  HistoryRequest createEmptyInstance() => create();
  static $pb.PbList<HistoryRequest> createRepeated() => $pb.PbList<HistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static HistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryRequest>(create);
  static HistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get interval => $_getSZ(1);
  @$pb.TagNumber(2)
  set interval($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInterval() => $_has(1);
  @$pb.TagNumber(2)
  void clearInterval() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get startTime => $_getI64(2);
  @$pb.TagNumber(3)
  set startTime($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get endTime => $_getI64(3);
  @$pb.TagNumber(4)
  set endTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get limit => $_getIZ(4);
  @$pb.TagNumber(5)
  set limit($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => clearField(5);
}

class HistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CoinbitPublicApi'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 't', $pb.PbFieldType.PU6)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'o')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'h')
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'l')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'c')
    ..p<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'v', $pb.PbFieldType.PF)
    ..hasRequiredFields = false
  ;

  HistoryResponse._() : super();
  factory HistoryResponse({
    $core.Iterable<$fixnum.Int64>? t,
    $core.Iterable<$core.String>? o,
    $core.Iterable<$core.String>? h,
    $core.Iterable<$core.String>? l,
    $core.Iterable<$core.String>? c,
    $core.Iterable<$core.double>? v,
  }) {
    final _result = create();
    if (t != null) {
      _result.t.addAll(t);
    }
    if (o != null) {
      _result.o.addAll(o);
    }
    if (h != null) {
      _result.h.addAll(h);
    }
    if (l != null) {
      _result.l.addAll(l);
    }
    if (c != null) {
      _result.c.addAll(c);
    }
    if (v != null) {
      _result.v.addAll(v);
    }
    return _result;
  }
  factory HistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryResponse clone() => HistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryResponse copyWith(void Function(HistoryResponse) updates) => super.copyWith((message) => updates(message as HistoryResponse)) as HistoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HistoryResponse create() => HistoryResponse._();
  HistoryResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryResponse> createRepeated() => $pb.PbList<HistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryResponse>(create);
  static HistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get t => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get o => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get h => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get l => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get c => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.double> get v => $_getList(5);
}

class HistoryApi {
  $pb.RpcClient _client;
  HistoryApi(this._client);

  $async.Future<HistoryResponse> getHistory($pb.ClientContext? ctx, HistoryRequest request) {
    var emptyResponse = HistoryResponse();
    return _client.invoke<HistoryResponse>(ctx, 'History', 'GetHistory', request, emptyResponse);
  }
}

