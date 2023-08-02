part of '../tdapi.dart';

/// **SetStickerSetThumbnail** *(setStickerSetThumbnail)* - TDLib function
///
/// Sets a sticker set thumbnail; for bots only.
///
/// * [userId]: Sticker set owner.
/// * [name]: Sticker set name.
/// * [thumbnail]: Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set *(optional)*.
///
/// [Ok] is returned on completion.
final class SetStickerSetThumbnail extends TdFunction {
  
  /// **SetStickerSetThumbnail** *(setStickerSetThumbnail)* - TDLib function
  ///
  /// Sets a sticker set thumbnail; for bots only.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [thumbnail]: Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetStickerSetThumbnail({
    required this.userId,
    required this.name,
    this.thumbnail,
  });
  
  /// Sticker set owner
  final int userId;

  /// Sticker set name
  final String name;

  /// Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
  final InputFile? thumbnail;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "name": name,
      "thumbnail": thumbnail?.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Sticker set owner
  /// * [name]: Sticker set name
  /// * [thumbnail]: Thumbnail to set in PNG, TGS, or WEBM format; pass null to remove the sticker set thumbnail. Thumbnail format must match the format of stickers in the set
  SetStickerSetThumbnail copyWith({
    int? userId,
    String? name,
    InputFile? thumbnail,
  }) => SetStickerSetThumbnail(
    userId: userId ?? this.userId,
    name: name ?? this.name,
    thumbnail: thumbnail ?? this.thumbnail,
  );

  /// TDLib object type
  static const String objectType = 'setStickerSetThumbnail';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
