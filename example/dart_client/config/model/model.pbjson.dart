///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use hatDescriptor instead')
const Hat$json = const {
  '1': 'Hat',
  '2': const [
    const {'1': 'size', '3': 1, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'color', '3': 2, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'created_on', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdOn'},
    const {'1': 'rgbColor', '3': 5, '4': 1, '5': 11, '6': '.config.model.Color', '10': 'rgbColor'},
    const {'1': 'availableSizes', '3': 6, '4': 3, '5': 11, '6': '.config.model.Size', '10': 'availableSizes'},
    const {'1': 'roles', '3': 7, '4': 3, '5': 5, '10': 'roles'},
    const {'1': 'dictionary', '3': 8, '4': 3, '5': 11, '6': '.config.model.Hat.DictionaryEntry', '10': 'dictionary'},
    const {'1': 'dictionaryWithMessage', '3': 9, '4': 3, '5': 11, '6': '.config.model.Hat.DictionaryWithMessageEntry', '10': 'dictionaryWithMessage'},
  ],
  '3': const [Hat_DictionaryEntry$json, Hat_DictionaryWithMessageEntry$json],
};

@$core.Deprecated('Use hatDescriptor instead')
const Hat_DictionaryEntry$json = const {
  '1': 'DictionaryEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use hatDescriptor instead')
const Hat_DictionaryWithMessageEntry$json = const {
  '1': 'DictionaryWithMessageEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.config.model.Size', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Hat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hatDescriptor = $convert.base64Decode('CgNIYXQSEgoEc2l6ZRgBIAEoBVIEc2l6ZRIUCgVjb2xvchgCIAEoCVIFY29sb3ISEgoEbmFtZRgDIAEoCVIEbmFtZRI5CgpjcmVhdGVkX29uGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZE9uEi8KCHJnYkNvbG9yGAUgASgLMhMuY29uZmlnLm1vZGVsLkNvbG9yUghyZ2JDb2xvchI6Cg5hdmFpbGFibGVTaXplcxgGIAMoCzISLmNvbmZpZy5tb2RlbC5TaXplUg5hdmFpbGFibGVTaXplcxIUCgVyb2xlcxgHIAMoBVIFcm9sZXMSQQoKZGljdGlvbmFyeRgIIAMoCzIhLmNvbmZpZy5tb2RlbC5IYXQuRGljdGlvbmFyeUVudHJ5UgpkaWN0aW9uYXJ5EmIKFWRpY3Rpb25hcnlXaXRoTWVzc2FnZRgJIAMoCzIsLmNvbmZpZy5tb2RlbC5IYXQuRGljdGlvbmFyeVdpdGhNZXNzYWdlRW50cnlSFWRpY3Rpb25hcnlXaXRoTWVzc2FnZRo9Cg9EaWN0aW9uYXJ5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4ARpcChpEaWN0aW9uYXJ5V2l0aE1lc3NhZ2VFbnRyeRIQCgNrZXkYASABKAlSA2tleRIoCgV2YWx1ZRgCIAEoCzISLmNvbmZpZy5tb2RlbC5TaXplUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use colorDescriptor instead')
const Color$json = const {
  '1': 'Color',
  '2': const [
    const {'1': 'red', '3': 1, '4': 1, '5': 5, '10': 'red'},
    const {'1': 'green', '3': 2, '4': 1, '5': 5, '10': 'green'},
    const {'1': 'blue', '3': 3, '4': 1, '5': 5, '10': 'blue'},
  ],
};

/// Descriptor for `Color`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorDescriptor = $convert.base64Decode('CgVDb2xvchIQCgNyZWQYASABKAVSA3JlZBIUCgVncmVlbhgCIAEoBVIFZ3JlZW4SEgoEYmx1ZRgDIAEoBVIEYmx1ZQ==');
@$core.Deprecated('Use receiptDescriptor instead')
const Receipt$json = const {
  '1': 'Receipt',
  '2': const [
    const {'1': 'total', '3': 1, '4': 1, '5': 1, '10': 'total'},
  ],
};

/// Descriptor for `Receipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiptDescriptor = $convert.base64Decode('CgdSZWNlaXB0EhQKBXRvdGFsGAEgASgBUgV0b3RhbA==');
@$core.Deprecated('Use sizeDescriptor instead')
const Size$json = const {
  '1': 'Size',
  '2': const [
    const {'1': 'inches', '3': 1, '4': 1, '5': 5, '10': 'inches'},
  ],
};

/// Descriptor for `Size`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeDescriptor = $convert.base64Decode('CgRTaXplEhYKBmluY2hlcxgBIAEoBVIGaW5jaGVz');
