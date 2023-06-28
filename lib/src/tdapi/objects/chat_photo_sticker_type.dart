part of '../tdapi.dart';

/// **ChatPhotoStickerType** *(chatPhotoStickerType)* - parent
///
/// Describes type of a sticker, which was used to create a chat photo.
sealed class ChatPhotoStickerType extends TdObject {
  
  /// **ChatPhotoStickerType** *(chatPhotoStickerType)* - parent
  ///
  /// Describes type of a sticker, which was used to create a chat photo.
  const ChatPhotoStickerType();
  
  /// a ChatPhotoStickerType return type can be :
  /// * [ChatPhotoStickerTypeRegularOrMask]
  /// * [ChatPhotoStickerTypeCustomEmoji]
  factory ChatPhotoStickerType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatPhotoStickerTypeRegularOrMask.objectType:
        return ChatPhotoStickerTypeRegularOrMask.fromJson(json);
      case ChatPhotoStickerTypeCustomEmoji.objectType:
        return ChatPhotoStickerTypeCustomEmoji.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatPhotoStickerType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  ChatPhotoStickerType copyWith();

  static const String objectType = 'chatPhotoStickerType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatPhotoStickerTypeRegularOrMask** *(chatPhotoStickerTypeRegularOrMask)* - child of ChatPhotoStickerType
///
/// Information about the sticker, which was used to create the chat photo.
///
/// * [stickerSetId]: Sticker set identifier.
/// * [stickerId]: Identifier of the sticker in the set.
final class ChatPhotoStickerTypeRegularOrMask extends ChatPhotoStickerType {
  
  /// **ChatPhotoStickerTypeRegularOrMask** *(chatPhotoStickerTypeRegularOrMask)* - child of ChatPhotoStickerType
  ///
  /// Information about the sticker, which was used to create the chat photo.
  ///
  /// * [stickerSetId]: Sticker set identifier.
  /// * [stickerId]: Identifier of the sticker in the set.
  const ChatPhotoStickerTypeRegularOrMask({
    required this.stickerSetId,
    required this.stickerId,
  });
  
  /// Sticker set identifier
  final int stickerSetId;

  /// Identifier of the sticker in the set
  final int stickerId;
  
  /// Parse from a json
  factory ChatPhotoStickerTypeRegularOrMask.fromJson(Map<String, dynamic> json) => ChatPhotoStickerTypeRegularOrMask(
    stickerSetId: int.parse(json['sticker_set_id']),
    stickerId: int.parse(json['sticker_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "sticker_set_id": stickerSetId,
      "sticker_id": stickerId,
		};
	}

  
  @override
  ChatPhotoStickerTypeRegularOrMask copyWith({
    int? stickerSetId,
    int? stickerId,
  }) => ChatPhotoStickerTypeRegularOrMask(
    stickerSetId: stickerSetId ?? this.stickerSetId,
    stickerId: stickerId ?? this.stickerId,
  );

  static const String objectType = 'chatPhotoStickerTypeRegularOrMask';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **ChatPhotoStickerTypeCustomEmoji** *(chatPhotoStickerTypeCustomEmoji)* - child of ChatPhotoStickerType
///
/// Information about the custom emoji, which was used to create the chat photo.
///
/// * [customEmojiId]: Identifier of the custom emoji.
final class ChatPhotoStickerTypeCustomEmoji extends ChatPhotoStickerType {
  
  /// **ChatPhotoStickerTypeCustomEmoji** *(chatPhotoStickerTypeCustomEmoji)* - child of ChatPhotoStickerType
  ///
  /// Information about the custom emoji, which was used to create the chat photo.
  ///
  /// * [customEmojiId]: Identifier of the custom emoji.
  const ChatPhotoStickerTypeCustomEmoji({
    required this.customEmojiId,
  });
  
  /// Identifier of the custom emoji
  final int customEmojiId;
  
  /// Parse from a json
  factory ChatPhotoStickerTypeCustomEmoji.fromJson(Map<String, dynamic> json) => ChatPhotoStickerTypeCustomEmoji(
    customEmojiId: int.parse(json['custom_emoji_id']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "custom_emoji_id": customEmojiId,
		};
	}

  
  @override
  ChatPhotoStickerTypeCustomEmoji copyWith({
    int? customEmojiId,
  }) => ChatPhotoStickerTypeCustomEmoji(
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String objectType = 'chatPhotoStickerTypeCustomEmoji';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
