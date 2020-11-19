part of '../tdapi.dart';

class JoinChatByInviteLink extends TdFunction {
  /// Uses an invite link to add the current user to the chat if possible. The new member will not be added until the chat state has been synchronized with the server
  JoinChatByInviteLink({this.inviteLink});

  /// [inviteLink] Invite link to import; should begin with "https://t.me/joinchat/", "https://telegram.me/joinchat/", or "https://telegram.dog/joinchat/"
  String inviteLink;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  JoinChatByInviteLink.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": this.inviteLink,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'joinChatByInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
