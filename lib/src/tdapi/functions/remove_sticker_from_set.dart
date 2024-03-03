part of '../tdapi.dart';

/// **RemoveStickerFromSet** *(removeStickerFromSet)* - TDLib function
///
/// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
///
/// * [sticker]: Sticker.
///
/// [Ok] is returned on completion.
final class RemoveStickerFromSet extends TdFunction {
  /// **RemoveStickerFromSet** *(removeStickerFromSet)* - TDLib function
  ///
  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot.
  ///
  /// * [sticker]: Sticker.
  ///
  /// [Ok] is returned on completion.
  const RemoveStickerFromSet({
    required this.sticker,
  });

  /// Sticker
  final InputFile sticker;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker]: Sticker
  RemoveStickerFromSet copyWith({
    InputFile? sticker,
  }) =>
      RemoveStickerFromSet(
        sticker: sticker ?? this.sticker,
      );

  /// TDLib object type
  static const String defaultObjectId = 'removeStickerFromSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
