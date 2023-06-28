part of '../tdapi.dart';

/// **GetEmojiCategories** *(getEmojiCategories)* - TDLib function
///
/// Returns available emojis categories.
///
/// * [type]: Type of emoji categories to return; pass null to get default emoji categories *(optional)*.
///
/// [EmojiCategories] is returned on completion.
final class GetEmojiCategories extends TdFunction {
  
  /// **GetEmojiCategories** *(getEmojiCategories)* - TDLib function
  ///
  /// Returns available emojis categories.
  ///
  /// * [type]: Type of emoji categories to return; pass null to get default emoji categories *(optional)*.
  ///
  /// [EmojiCategories] is returned on completion.
  const GetEmojiCategories({
    this.type,
  });
  
  /// Type of emoji categories to return; pass null to get default emoji categories
  final EmojiCategoryType? type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "type": type?.toJson(),
      "@extra": extra,
		};
	}

  
  GetEmojiCategories copyWith({
    EmojiCategoryType? type,
  }) => GetEmojiCategories(
    type: type ?? this.type,
  );

  static const String objectType = 'getEmojiCategories';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
