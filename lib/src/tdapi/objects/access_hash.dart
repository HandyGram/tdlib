part of '../tdapi.dart';

/// **AccessHash** *(accessHash)* - basic class
///
/// Access hash.
///
/// * [chatId]: Chat identifier.
/// * [type]: Access hash type.
/// * [accessHash]: Access hash.
final class AccessHash extends TdObject {
  /// **AccessHash** *(accessHash)* - basic class
  ///
  /// Access hash.
  ///
  /// * [chatId]: Chat identifier.
  /// * [type]: Access hash type.
  /// * [accessHash]: Access hash.
  const AccessHash({
    required this.chatId,
    required this.type,
    required this.accessHash,
  });

  /// Chat identifier
  final int chatId;

  /// Access hash type
  final AccessHashType type;

  /// Access hash
  final int accessHash;

  /// Parse from a json
  factory AccessHash.fromJson(Map<String, dynamic> json) => AccessHash(
        chatId: json['chat_id'],
        type: AccessHashType.fromJson(json['type']),
        accessHash: int.parse(json['access_hash']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "type": type.toJson(),
      "access_hash": accessHash,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [type]: Access hash type
  /// * [access_hash]: Access hash
  AccessHash copyWith({
    int? chatId,
    AccessHashType? type,
    int? accessHash,
  }) =>
      AccessHash(
        chatId: chatId ?? this.chatId,
        type: type ?? this.type,
        accessHash: accessHash ?? this.accessHash,
      );

  /// TDLib object type
  static const String defaultObjectId = 'accessHash';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
