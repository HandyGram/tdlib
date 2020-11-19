part of '../tdapi.dart';

class DeleteSupergroup extends TdFunction {
  /// Deletes a supergroup or channel along with all messages in the corresponding chat. This will release the supergroup or channel username and remove all members; requires owner privileges in the supergroup or channel. Chats with more than 1000 members can't be deleted using this method
  DeleteSupergroup({this.supergroupId});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteSupergroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
