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
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "type": type.toJson(),
      "access_hash": accessHash,
		};
	}

  
  AccessHash copyWith({
    int? chatId,
    AccessHashType? type,
    int? accessHash,
  }) => AccessHash(
    chatId: chatId ?? this.chatId,
    type: type ?? this.type,
    accessHash: accessHash ?? this.accessHash,
  );

  static const String objectType = 'accessHash';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
