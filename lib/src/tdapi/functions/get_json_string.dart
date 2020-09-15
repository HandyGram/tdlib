part of '../tdapi.dart';

class GetJsonString extends TdFunction {
  JsonValue jsonValue;
  dynamic extra;

  /// Converts a JsonValue object to corresponding JSON-serialized string. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [jsonValue] The JsonValue object
  GetJsonString({this.jsonValue});

  /// Parse from a json
  GetJsonString.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json_value": this.jsonValue == null ? null : this.jsonValue.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getJsonString';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}