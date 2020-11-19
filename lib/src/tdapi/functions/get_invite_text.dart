part of '../tdapi.dart';

class GetInviteText extends TdFunction {
  /// Returns the default text for invitation messages to be used as a placeholder when the current user invites friends to Telegram
  GetInviteText();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetInviteText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInviteText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
