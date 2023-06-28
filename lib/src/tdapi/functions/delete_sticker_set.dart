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
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "@extra": extra,
		};
	}

  
  DeleteStickerSet copyWith({
    String? name,
  }) => DeleteStickerSet(
    name: name ?? this.name,
  );

  static const String objectType = 'deleteStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
