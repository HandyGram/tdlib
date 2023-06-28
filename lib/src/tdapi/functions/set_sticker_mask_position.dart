part of '../tdapi.dart';

/// **SetStickerMaskPosition** *(setStickerMaskPosition)* - TDLib function
///
/// Changes the mask position of a mask sticker; for bots only. The sticker must belong to a mask sticker set created by the bot.
///
/// * [sticker]: Sticker.
/// * [maskPosition]: Position where the mask is placed; pass null to remove mask position *(optional)*.
///
/// [Ok] is returned on completion.
final class SetStickerMaskPosition extends TdFunction {
  
  /// **SetStickerMaskPosition** *(setStickerMaskPosition)* - TDLib function
  ///
  /// Changes the mask position of a mask sticker; for bots only. The sticker must belong to a mask sticker set created by the bot.
  ///
  /// * [sticker]: Sticker.
  /// * [maskPosition]: Position where the mask is placed; pass null to remove mask position *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetStickerMaskPosition({
    required this.sticker,
    this.maskPosition,
  });
  
  /// Sticker
  final InputFile sticker;

  /// Position where the mask is placed; pass null to remove mask position
  final MaskPosition? maskPosition;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker": sticker.toJson(),
      "mask_position": maskPosition?.toJson(),
      "@extra": extra,
		};
	}

  
  SetStickerMaskPosition copyWith({
    InputFile? sticker,
    MaskPosition? maskPosition,
  }) => SetStickerMaskPosition(
    sticker: sticker ?? this.sticker,
    maskPosition: maskPosition ?? this.maskPosition,
  );

  static const String objectType = 'setStickerMaskPosition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
