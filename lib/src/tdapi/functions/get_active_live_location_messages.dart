part of '../tdapi.dart';

class GetActiveLiveLocationMessages extends TdFunction {
  dynamic extra;

  /// Returns all active live locations that should be updated by the application. The list is persistent across application restarts only if the message database is used
  GetActiveLiveLocationMessages();

  /// Parse from a json
  GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getActiveLiveLocationMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}