part of '../tdapi.dart';

/// **GetDefaultChatPhotoCustomEmojiStickers** *(getDefaultChatPhotoCustomEmojiStickers)* - TDLib function
///
/// Returns default list of custom emoji stickers for placing on a chat photo.
///
/// [Stickers] is returned on completion.
final class GetDefaultChatPhotoCustomEmojiStickers extends TdFunction {
  
  /// **GetDefaultChatPhotoCustomEmojiStickers** *(getDefaultChatPhotoCustomEmojiStickers)* - TDLib function
  ///
  /// Returns default list of custom emoji stickers for placing on a chat photo.
  ///
  /// [Stickers] is returned on completion.
  const GetDefaultChatPhotoCustomEmojiStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetDefaultChatPhotoCustomEmojiStickers copyWith() => const GetDefaultChatPhotoCustomEmojiStickers();

  static const String objectType = 'getDefaultChatPhotoCustomEmojiStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
