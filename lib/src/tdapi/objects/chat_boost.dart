part of '../tdapi.dart';

/// **ChatBoost** *(chatBoost)* - basic class
///
/// Describes a boost of a chat.
///
/// * [userId]: Identifier of a user that boosted the chat.
/// * [expirationDate]: Point in time (Unix timestamp) when the boost will automatically expire if the user will not prolongate their Telegram Premium subscription.
final class ChatBoost extends TdObject {
  
  /// **ChatBoost** *(chatBoost)* - basic class
  ///
  /// Describes a boost of a chat.
  ///
  /// * [userId]: Identifier of a user that boosted the chat.
  /// * [expirationDate]: Point in time (Unix timestamp) when the boost will automatically expire if the user will not prolongate their Telegram Premium subscription.
  const ChatBoost({
    required this.userId,
    required this.expirationDate,
  });
  
  /// Identifier of a user that boosted the chat 
  final int userId;

  /// Point in time (Unix timestamp) when the boost will automatically expire if the user will not prolongate their Telegram Premium subscription
  final int expirationDate;
  
  /// Parse from a json
  factory ChatBoost.fromJson(Map<String, dynamic> json) => ChatBoost(
    userId: json['user_id'],
    expirationDate: json['expiration_date'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "expiration_date": expirationDate,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of a user that boosted the chat 
  /// * [expiration_date]: Point in time (Unix timestamp) when the boost will automatically expire if the user will not prolongate their Telegram Premium subscription
  ChatBoost copyWith({
    int? userId,
    int? expirationDate,
  }) => ChatBoost(
    userId: userId ?? this.userId,
    expirationDate: expirationDate ?? this.expirationDate,
  );

  /// TDLib object type
  static const String objectType = 'chatBoost';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
