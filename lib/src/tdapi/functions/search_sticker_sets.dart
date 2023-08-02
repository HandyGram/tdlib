part of '../tdapi.dart';

/// **SearchStickerSets** *(searchStickerSets)* - TDLib function
///
/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
///
/// * [query]: Query to search for.
///
/// [StickerSets] is returned on completion.
final class SearchStickerSets extends TdFunction {
  
  /// **SearchStickerSets** *(searchStickerSets)* - TDLib function
  ///
  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
  ///
  /// * [query]: Query to search for.
  ///
  /// [StickerSets] is returned on completion.
  const SearchStickerSets({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "query": query,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [query]: Query to search for
  SearchStickerSets copyWith({
    String? query,
  }) => SearchStickerSets(
    query: query ?? this.query,
  );

  /// TDLib object type
  static const String objectType = 'searchStickerSets';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
