part of '../tdapi.dart';

/// **SearchStickerSet** *(searchStickerSet)* - TDLib function
///
/// Searches for a sticker set by its name.
///
/// * [name]: Name of the sticker set.
///
/// [StickerSet] is returned on completion.
final class SearchStickerSet extends TdFunction {
  /// **SearchStickerSet** *(searchStickerSet)* - TDLib function
  ///
  /// Searches for a sticker set by its name.
  ///
  /// * [name]: Name of the sticker set.
  ///
  /// [StickerSet] is returned on completion.
  const SearchStickerSet({
    required this.name,
  });

  /// Name of the sticker set
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
  /// * [name]: Name of the sticker set
  SearchStickerSet copyWith({
    String? name,
  }) =>
      SearchStickerSet(
        name: name ?? this.name,
      );

  /// TDLib object type
  static const String defaultObjectId = 'searchStickerSet';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
