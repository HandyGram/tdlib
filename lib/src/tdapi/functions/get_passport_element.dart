part of '../tdapi.dart';

class GetPassportElement extends TdFunction {
  PassportElementType type;
  String password;
  dynamic extra;

  /// Returns one of the available Telegram Passport elements. 
  /// [type] Telegram Passport element type . 
  /// [password] Password of the current user
  GetPassportElement({this.type,
    this.password});

  /// Parse from a json
  GetPassportElement.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type == null ? null : this.type.toJson(),
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}