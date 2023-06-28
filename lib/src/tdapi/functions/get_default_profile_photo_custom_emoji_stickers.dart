part of '../tdapi.dart';

/// **GetDefaultProfilePhotoCustomEmojiStickers** *(getDefaultProfilePhotoCustomEmojiStickers)* - TDLib function
///
/// Returns default list of custom emoji stickers for placing on a profile photo.
///
/// [Stickers] is returned on completion.
final class GetDefaultProfilePhotoCustomEmojiStickers extends TdFunction {
  
  /// **GetDefaultProfilePhotoCustomEmojiStickers** *(getDefaultProfilePhotoCustomEmojiStickers)* - TDLib function
  ///
  /// Returns default list of custom emoji stickers for placing on a profile photo.
  ///
  /// [Stickers] is returned on completion.
  const GetDefaultProfilePhotoCustomEmojiStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetDefaultProfilePhotoCustomEmojiStickers copyWith() => const GetDefaultProfilePhotoCustomEmojiStickers();

  static const String objectType = 'getDefaultProfilePhotoCustomEmojiStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
