///
//  Generated code. Do not modify.
//  source: api_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use historyRequestDescriptor instead')
const HistoryRequest$json = const {
  '1': 'HistoryRequest',
  '2': const [
    const {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    const {'1': 'interval', '3': 2, '4': 1, '5': 9, '10': 'interval'},
    const {'1': 'start_time', '3': 3, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'end_time', '3': 4, '4': 1, '5': 4, '10': 'endTime'},
    const {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `HistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyRequestDescriptor = $convert.base64Decode('Cg5IaXN0b3J5UmVxdWVzdBIWCgZzeW1ib2wYASABKAlSBnN5bWJvbBIaCghpbnRlcnZhbBgCIAEoCVIIaW50ZXJ2YWwSHQoKc3RhcnRfdGltZRgDIAEoBFIJc3RhcnRUaW1lEhkKCGVuZF90aW1lGAQgASgEUgdlbmRUaW1lEhQKBWxpbWl0GAUgASgNUgVsaW1pdA==');
@$core.Deprecated('Use historyResponseDescriptor instead')
const HistoryResponse$json = const {
  '1': 'HistoryResponse',
  '2': const [
    const {'1': 't', '3': 1, '4': 3, '5': 4, '10': 't'},
    const {'1': 'o', '3': 2, '4': 3, '5': 9, '10': 'o'},
    const {'1': 'h', '3': 3, '4': 3, '5': 9, '10': 'h'},
    const {'1': 'l', '3': 4, '4': 3, '5': 9, '10': 'l'},
    const {'1': 'c', '3': 5, '4': 3, '5': 9, '10': 'c'},
    const {'1': 'v', '3': 6, '4': 3, '5': 2, '10': 'v'},
  ],
};

/// Descriptor for `HistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyResponseDescriptor = $convert.base64Decode('Cg9IaXN0b3J5UmVzcG9uc2USDAoBdBgBIAMoBFIBdBIMCgFvGAIgAygJUgFvEgwKAWgYAyADKAlSAWgSDAoBbBgEIAMoCVIBbBIMCgFjGAUgAygJUgFjEgwKAXYYBiADKAJSAXY=');
const $core.Map<$core.String, $core.dynamic> HistoryServiceBase$json = const {
  '1': 'History',
  '2': const [
    const {'1': 'GetHistory', '2': '.CoinbitPublicApi.HistoryRequest', '3': '.CoinbitPublicApi.HistoryResponse'},
  ],
};

@$core.Deprecated('Use historyServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> HistoryServiceBase$messageJson = const {
  '.CoinbitPublicApi.HistoryRequest': HistoryRequest$json,
  '.CoinbitPublicApi.HistoryResponse': HistoryResponse$json,
};

/// Descriptor for `History`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List historyServiceDescriptor = $convert.base64Decode('CgdIaXN0b3J5ElEKCkdldEhpc3RvcnkSIC5Db2luYml0UHVibGljQXBpLkhpc3RvcnlSZXF1ZXN0GiEuQ29pbmJpdFB1YmxpY0FwaS5IaXN0b3J5UmVzcG9uc2U=');
