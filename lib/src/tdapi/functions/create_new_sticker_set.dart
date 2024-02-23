part of '../tdapi.dart';

/// **CreateNewStickerSet** *(createNewStickerSet)* - TDLib function
///
/// Creates a new sticker set. Returns the newly created sticker set.
///
/// * [userId]: Sticker set owner; ignored for regular users.
/// * [title]: Sticker set title; 1-64 characters.
/// * [name]: Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_.
/// * [stickerFormat]: Format of the stickers in the set.
/// * [stickerType]: Type of the stickers in the set.
/// * [needsRepainting]: Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only.
/// * [stickers]: List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown.
/// * [source]: Source of the sticker set; may be empty if unknown.
///
/// [StickerSet] is returned on completion.
final class CreateNewStickerSet extends TdFunction {
  
  /// **CreateNewStickerSet** *(createNewStickerSet)* - TDLib function
  ///
  /// Creates a new sticker set. Returns the newly created sticker set.
  ///
  /// * [userId]: Sticker set owner; ignored for regular users.
  /// * [title]: Sticker set title; 1-64 characters.
  /// * [name]: Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_.
  /// * [stickerFormat]: Format of the stickers in the set.
  /// * [stickerType]: Type of the stickers in the set.
  /// * [needsRepainting]: Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only.
  /// * [stickers]: List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown.
  /// * [source]: Source of the sticker set; may be empty if unknown.
  ///
  /// [StickerSet] is returned on completion.
  const CreateNewStickerSet({
    required this.userId,
    required this.title,
    required this.name,
    required this.stickerFormat,
    required this.stickerType,
    required this.needsRepainting,
    required this.stickers,
    required this.source,
  });
  
  /// Sticker set owner; ignored for regular users
  final int userId;

  /// Sticker set title; 1-64 characters
  final String title;

  /// Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  final String name;

  /// Format of the stickers in the set
  final StickerFormat stickerFormat;

  /// Type of the stickers in the set
  final StickerType stickerType;

  /// Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only
  final bool needsRepainting;

  /// List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown
  final List<InputSticker> stickers;

  /// Source of the sticker set; may be empty if unknown
  final String source;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "user_id": userId,
      "title": title,
      "name": name,
      "sticker_format": stickerFormat.toJson(),
      "sticker_type": stickerType.toJson(),
      "needs_repainting": needsRepainting,
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "source": source,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Sticker set owner; ignored for regular users
  /// * [title]: Sticker set title; 1-64 characters
  /// * [name]: Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  /// * [sticker_format]: Format of the stickers in the set
  /// * [sticker_type]: Type of the stickers in the set
  /// * [needs_repainting]: Pass true if stickers in the sticker set must be repainted; for custom emoji sticker sets only
  /// * [stickers]: List of stickers to be added to the set; must be non-empty. All stickers must have the same format. For TGS stickers, uploadStickerFile must be used before the sticker is shown
  /// * [source]: Source of the sticker set; may be empty if unknown
  CreateNewStickerSet copyWith({
    int? userId,
    String? title,
    String? name,
    StickerFormat? stickerFormat,
    StickerType? stickerType,
    bool? needsRepainting,
    List<InputSticker>? stickers,
    String? source,
  }) => CreateNewStickerSet(
    userId: userId ?? this.userId,
    title: title ?? this.title,
    name: name ?? this.name,
    stickerFormat: stickerFormat ?? this.stickerFormat,
    stickerType: stickerType ?? this.stickerType,
    needsRepainting: needsRepainting ?? this.needsRepainting,
    stickers: stickers ?? this.stickers,
    source: source ?? this.source,
  );

  /// TDLib object type
  static const String defaultObjectId = 'createNewStickerSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
