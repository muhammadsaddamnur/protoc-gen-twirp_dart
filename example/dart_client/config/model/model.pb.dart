///
//  Generated code. Do not modify.
//  source: model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;

class Hat extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hat', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'config.model'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$0.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdOn', subBuilder: $0.Timestamp.create)
    ..aOM<Color>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rgbColor', protoName: 'rgbColor', subBuilder: Color.create)
    ..pc<Size>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'availableSizes', $pb.PbFieldType.PM, protoName: 'availableSizes', subBuilder: Size.create)
    ..p<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roles', $pb.PbFieldType.P3)
    ..m<$core.String, $fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dictionary', entryClassName: 'Hat.DictionaryEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('config.model'))
    ..m<$core.String, Size>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dictionaryWithMessage', protoName: 'dictionaryWithMessage', entryClassName: 'Hat.DictionaryWithMessageEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: Size.create, packageName: const $pb.PackageName('config.model'))
    ..hasRequiredFields = false
  ;

  Hat._() : super();
  factory Hat({
    $core.int? size,
    $core.String? color,
    $core.String? name,
    $0.Timestamp? createdOn,
    Color? rgbColor,
    $core.Iterable<Size>? availableSizes,
    $core.Iterable<$core.int>? roles,
    $core.Map<$core.String, $fixnum.Int64>? dictionary,
    $core.Map<$core.String, Size>? dictionaryWithMessage,
  }) {
    final _result = create();
    if (size != null) {
      _result.size = size;
    }
    if (color != null) {
      _result.color = color;
    }
    if (name != null) {
      _result.name = name;
    }
    if (createdOn != null) {
      _result.createdOn = createdOn;
    }
    if (rgbColor != null) {
      _result.rgbColor = rgbColor;
    }
    if (availableSizes != null) {
      _result.availableSizes.addAll(availableSizes);
    }
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    if (dictionary != null) {
      _result.dictionary.addAll(dictionary);
    }
    if (dictionaryWithMessage != null) {
      _result.dictionaryWithMessage.addAll(dictionaryWithMessage);
    }
    return _result;
  }
  factory Hat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Hat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Hat clone() => Hat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Hat copyWith(void Function(Hat) updates) => super.copyWith((message) => updates(message as Hat)) as Hat; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hat create() => Hat._();
  Hat createEmptyInstance() => create();
  static $pb.PbList<Hat> createRepeated() => $pb.PbList<Hat>();
  @$core.pragma('dart2js:noInline')
  static Hat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hat>(create);
  static Hat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get size => $_getIZ(0);
  @$pb.TagNumber(1)
  set size($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(2)
  set color($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get createdOn => $_getN(3);
  @$pb.TagNumber(4)
  set createdOn($0.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedOn() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedOn() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureCreatedOn() => $_ensure(3);

  @$pb.TagNumber(5)
  Color get rgbColor => $_getN(4);
  @$pb.TagNumber(5)
  set rgbColor(Color v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRgbColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearRgbColor() => clearField(5);
  @$pb.TagNumber(5)
  Color ensureRgbColor() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<Size> get availableSizes => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get roles => $_getList(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $fixnum.Int64> get dictionary => $_getMap(7);

  @$pb.TagNumber(9)
  $core.Map<$core.String, Size> get dictionaryWithMessage => $_getMap(8);
}

class Color extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Color', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'config.model'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'red', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'green', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blue', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Color._() : super();
  factory Color({
    $core.int? red,
    $core.int? green,
    $core.int? blue,
  }) {
    final _result = create();
    if (red != null) {
      _result.red = red;
    }
    if (green != null) {
      _result.green = green;
    }
    if (blue != null) {
      _result.blue = blue;
    }
    return _result;
  }
  factory Color.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Color.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Color clone() => Color()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Color copyWith(void Function(Color) updates) => super.copyWith((message) => updates(message as Color)) as Color; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Color create() => Color._();
  Color createEmptyInstance() => create();
  static $pb.PbList<Color> createRepeated() => $pb.PbList<Color>();
  @$core.pragma('dart2js:noInline')
  static Color getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Color>(create);
  static Color? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get red => $_getIZ(0);
  @$pb.TagNumber(1)
  set red($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get green => $_getIZ(1);
  @$pb.TagNumber(2)
  set green($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get blue => $_getIZ(2);
  @$pb.TagNumber(3)
  set blue($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => clearField(3);
}

class Receipt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Receipt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'config.model'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Receipt._() : super();
  factory Receipt({
    $core.double? total,
  }) {
    final _result = create();
    if (total != null) {
      _result.total = total;
    }
    return _result;
  }
  factory Receipt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Receipt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Receipt clone() => Receipt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Receipt copyWith(void Function(Receipt) updates) => super.copyWith((message) => updates(message as Receipt)) as Receipt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Receipt create() => Receipt._();
  Receipt createEmptyInstance() => create();
  static $pb.PbList<Receipt> createRepeated() => $pb.PbList<Receipt>();
  @$core.pragma('dart2js:noInline')
  static Receipt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Receipt>(create);
  static Receipt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get total => $_getN(0);
  @$pb.TagNumber(1)
  set total($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => clearField(1);
}

class Size extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Size', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'config.model'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inches', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Size._() : super();
  factory Size({
    $core.int? inches,
  }) {
    final _result = create();
    if (inches != null) {
      _result.inches = inches;
    }
    return _result;
  }
  factory Size.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Size.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Size clone() => Size()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Size copyWith(void Function(Size) updates) => super.copyWith((message) => updates(message as Size)) as Size; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Size create() => Size._();
  Size createEmptyInstance() => create();
  static $pb.PbList<Size> createRepeated() => $pb.PbList<Size>();
  @$core.pragma('dart2js:noInline')
  static Size getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Size>(create);
  static Size? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get inches => $_getIZ(0);
  @$pb.TagNumber(1)
  set inches($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInches() => $_has(0);
  @$pb.TagNumber(1)
  void clearInches() => clearField(1);
}

