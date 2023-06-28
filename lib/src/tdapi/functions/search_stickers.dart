part of '../tdapi.dart';

/// **SearchStickers** *(searchStickers)* - TDLib function
///
/// Searches for stickers from public sticker sets that correspond to any of the given emoji.
///
/// * [stickerType]: Type of the stickers to return.
/// * [emojis]: Space-separated list of emoji to search for; must be non-empty.
/// * [limit]: The maximum number of stickers to be returned; 0-100.
///
/// [Stickers] is returned on completion.
final class SearchStickers extends TdFunction {
  
  /// **SearchStickers** *(searchStickers)* - TDLib function
  ///
  /// Searches for stickers from public sticker sets that correspond to any of the given emoji.
  ///
  /// * [stickerType]: Type of the stickers to return.
  /// * [emojis]: Space-separated list of emoji to search for; must be non-empty.
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

  /// Space-separated list of emoji to search for; must be non-empty
  final String emojis;

  /// The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sticker_type": stickerType.toJson(),
      "emojis": emojis,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  SearchStickers copyWith({
    StickerType? stickerType,
    String? emojis,
    int? limit,
  }) => SearchStickers(
    stickerType: stickerType ?? this.stickerType,
    emojis: emojis ?? this.emojis,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
