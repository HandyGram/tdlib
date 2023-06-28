part of '../tdapi.dart';

/// **SetStickerEmojis** *(setStickerEmojis)* - TDLib function
///
/// Changes the list of emoji corresponding to a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot.
///
/// * [sticker]: Sticker.
/// * [emojis]: New string with 1-20 emoji corresponding to the sticker.
///
/// [Ok] is returned on completion.
final class SetStickerEmojis extends TdFunction {
  
  /// **SetStickerEmojis** *(setStickerEmojis)* - TDLib function
  ///
  /// Changes the list of emoji corresponding to a sticker; for bots only. The sticker must belong to a regular or custom emoji sticker set created by the bot.
  ///
  /// * [sticker]: Sticker.
  /// * [emojis]: New string with 1-20 emoji corresponding to the sticker.
  ///
  /// [Ok] is returned on completion.
  const SetStickerEmojis({
    required this.sticker,
    required this.emojis,
  });
  
  /// Sticker
  final InputFile sticker;

  /// New string with 1-20 emoji corresponding to the sticker
  final String emojis;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "emojis": emojis,
      "@extra": extra,
		};
	}

  
  SetStickerEmojis copyWith({
    InputFile? sticker,
    String? emojis,
  }) => SetStickerEmojis(
    sticker: sticker ?? this.sticker,
    emojis: emojis ?? this.emojis,
  );

  static const String objectType = 'setStickerEmojis';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
