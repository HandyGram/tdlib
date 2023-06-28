part of '../tdapi.dart';

/// **SetStickerKeywords** *(setStickerKeywords)* - TDLib function
///
/// Changes the list of keywords of a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot.
///
/// * [sticker]: Sticker.
/// * [keywords]: List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker.
///
/// [Ok] is returned on completion.
final class SetStickerKeywords extends TdFunction {
  
  /// **SetStickerKeywords** *(setStickerKeywords)* - TDLib function
  ///
  /// Changes the list of keywords of a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot.
  ///
  /// * [sticker]: Sticker.
  /// * [keywords]: List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker.
  ///
  /// [Ok] is returned on completion.
  const SetStickerKeywords({
    required this.sticker,
    required this.keywords,
  });
  
  /// Sticker
  final InputFile sticker;

  /// List of up to 20 keywords with total length up to 64 characters, which can be used to find the sticker
  final List<String> keywords;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "keywords": keywords.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  SetStickerKeywords copyWith({
    InputFile? sticker,
    List<String>? keywords,
  }) => SetStickerKeywords(
    sticker: sticker ?? this.sticker,
    keywords: keywords ?? this.keywords,
  );

  static const String objectType = 'setStickerKeywords';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
