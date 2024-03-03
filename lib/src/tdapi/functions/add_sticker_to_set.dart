part of '../tdapi.dart';

/// **AddStickerToSet** *(addStickerToSet)* - TDLib function
///
/// Adds a new sticker to a set; for bots only.
///
/// * [userId]: Sticker set owner.
/// * [name]: Sticker set name.
/// * [sticker]: Sticker to add to the set.
///
/// [Ok] is returned on completion.
final class AddStickerToSet extends TdFunction {
  /// **AddStickerToSet** *(addStickerToSet)* - TDLib function
  ///
  /// Adds a new sticker to a set; for bots only.
  ///
  /// * [userId]: Sticker set owner.
  /// * [name]: Sticker set name.
  /// * [sticker]: Sticker to add to the set.
  ///
  /// [Ok] is returned on completion.
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });

  /// Sticker set owner
  final int userId;

  /// Sticker set name
  final String name;

  /// Sticker to add to the set
  final InputSticker sticker;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "name": name,
      "sticker": sticker.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Sticker set owner
  /// * [name]: Sticker set name
  /// * [sticker]: Sticker to add to the set
  AddStickerToSet copyWith({
    int? userId,
    String? name,
    InputSticker? sticker,
  }) =>
      AddStickerToSet(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        sticker: sticker ?? this.sticker,
      );

  /// TDLib object type
  static const String defaultObjectId = 'addStickerToSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
