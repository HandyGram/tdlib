part of '../tdapi.dart';

/// **DeleteStickerSet** *(deleteStickerSet)* - TDLib function
///
/// Deleted a sticker set; for bots only.
///
/// * [name]: Sticker set name.
///
/// [Ok] is returned on completion.
final class DeleteStickerSet extends TdFunction {
  
  /// **DeleteStickerSet** *(deleteStickerSet)* - TDLib function
  ///
  /// Deleted a sticker set; for bots only.
  ///
  /// * [name]: Sticker set name.
  ///
  /// [Ok] is returned on completion.
  const DeleteStickerSet({
    required this.name,
  });
  
  /// Sticker set name
  final String name;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "name": name,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Sticker set name
  DeleteStickerSet copyWith({
    String? name,
  }) => DeleteStickerSet(
    name: name ?? this.name,
  );

  /// TDLib object type
  static const String defaultObjectId = 'deleteStickerSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
