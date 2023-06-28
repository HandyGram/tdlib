part of '../tdapi.dart';

/// **SetCustomEmojiStickerSetThumbnail** *(setCustomEmojiStickerSetThumbnail)* - TDLib function
///
/// Sets a custom emoji sticker set thumbnail; for bots only.
///
/// * [name]: Sticker set name.
/// * [customEmojiId]: Identifier of the custom emoji from the sticker set, which will be set as sticker set thumbnail; pass 0 to remove the sticker set thumbnail.
///
/// [Ok] is returned on completion.
final class SetCustomEmojiStickerSetThumbnail extends TdFunction {
  
  /// **SetCustomEmojiStickerSetThumbnail** *(setCustomEmojiStickerSetThumbnail)* - TDLib function
  ///
  /// Sets a custom emoji sticker set thumbnail; for bots only.
  ///
  /// * [name]: Sticker set name.
  /// * [customEmojiId]: Identifier of the custom emoji from the sticker set, which will be set as sticker set thumbnail; pass 0 to remove the sticker set thumbnail.
  ///
  /// [Ok] is returned on completion.
  const SetCustomEmojiStickerSetThumbnail({
    required this.name,
    required this.customEmojiId,
  });
  
  /// Sticker set name
  final String name;

  /// Identifier of the custom emoji from the sticker set, which will be set as sticker set thumbnail; pass 0 to remove the sticker set thumbnail
  final int customEmojiId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "custom_emoji_id": customEmojiId,
      "@extra": extra,
		};
	}

  
  SetCustomEmojiStickerSetThumbnail copyWith({
    String? name,
    int? customEmojiId,
  }) => SetCustomEmojiStickerSetThumbnail(
    name: name ?? this.name,
    customEmojiId: customEmojiId ?? this.customEmojiId,
  );

  static const String objectType = 'setCustomEmojiStickerSetThumbnail';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
