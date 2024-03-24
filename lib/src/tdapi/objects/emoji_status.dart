part of '../tdapi.dart';

/// **EmojiStatus** *(emojiStatus)* - basic class
///
/// Describes a custom emoji to be shown instead of the Telegram Premium badge.
///
/// * [customEmojiId]: Identifier of the custom emoji in stickerFormatTgs format.
/// * [expirationDate]: Point in time (Unix timestamp) when the status will expire; 0 if never.
final class EmojiStatus extends TdObject {
  /// **EmojiStatus** *(emojiStatus)* - basic class
  ///
  /// Describes a custom emoji to be shown instead of the Telegram Premium badge.
  ///
  /// * [customEmojiId]: Identifier of the custom emoji in stickerFormatTgs format.
  /// * [expirationDate]: Point in time (Unix timestamp) when the status will expire; 0 if never.
  const EmojiStatus({
    required this.customEmojiId,
    required this.expirationDate,
  });

  /// Identifier of the custom emoji in stickerFormatTgs format
  final int customEmojiId;

  /// Point in time (Unix timestamp) when the status will expire; 0 if never
  final int expirationDate;

  /// Parse from a json
  factory EmojiStatus.fromJson(Map<String, dynamic> json) => EmojiStatus(
        customEmojiId: json['custom_emoji_id'] is int
            ? json['custom_emoji_id']
            : int.parse(json['custom_emoji_id']),
        expirationDate: json['expiration_date'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "custom_emoji_id": customEmojiId,
      "expiration_date": expirationDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [custom_emoji_id]: Identifier of the custom emoji in stickerFormatTgs format
  /// * [expiration_date]: Point in time (Unix timestamp) when the status will expire; 0 if never
  EmojiStatus copyWith({
    int? customEmojiId,
    int? expirationDate,
  }) =>
      EmojiStatus(
        customEmojiId: customEmojiId ?? this.customEmojiId,
        expirationDate: expirationDate ?? this.expirationDate,
      );

  /// TDLib object type
  static const String defaultObjectId = 'emojiStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
