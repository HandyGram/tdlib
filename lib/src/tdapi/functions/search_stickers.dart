part of '../tdapi.dart';

/// **SearchStickers** *(searchStickers)* - TDLib function
///
/// Searches for stickers from public sticker sets that correspond to any of the given emoji.
///
/// * [stickerType]: Type of the stickers to return.
/// * [emojis]: Space-separated list of emojis to search for; must be non-empty.
/// * [limit]: The maximum number of stickers to be returned; 0-100.
///
/// [Stickers] is returned on completion.
final class SearchStickers extends TdFunction {
  /// **SearchStickers** *(searchStickers)* - TDLib function
  ///
  /// Searches for stickers from public sticker sets that correspond to any of the given emoji.
  ///
  /// * [stickerType]: Type of the stickers to return.
  /// * [emojis]: Space-separated list of emojis to search for; must be non-empty.
  /// * [limit]: The maximum number of stickers to be returned; 0-100.
  ///
  /// [Stickers] is returned on completion.
  const SearchStickers({
    required this.stickerType,
    required this.emojis,
    required this.limit,
  });

  /// Type of the stickers to return
  final StickerType stickerType;

  /// Space-separated list of emojis to search for; must be non-empty
  final String emojis;

  /// The maximum number of stickers to be returned; 0-100
  final int limit;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "sticker_type": stickerType.toJson(),
      "emojis": emojis,
      "limit": limit,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker_type]: Type of the stickers to return
  /// * [emojis]: Space-separated list of emojis to search for; must be non-empty
  /// * [limit]: The maximum number of stickers to be returned; 0-100
  SearchStickers copyWith({
    StickerType? stickerType,
    String? emojis,
    int? limit,
  }) =>
      SearchStickers(
        stickerType: stickerType ?? this.stickerType,
        emojis: emojis ?? this.emojis,
        limit: limit ?? this.limit,
      );

  /// TDLib object type
  static const String defaultObjectId = 'searchStickers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
