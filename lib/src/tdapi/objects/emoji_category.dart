part of '../tdapi.dart';

/// **EmojiCategory** *(emojiCategory)* - basic class
///
/// Contains a list of similar emoji to search for in getStickers and searchStickers.
///
/// * [name]: Name of the category.
/// * [icon]: Custom emoji sticker, which represents icon of the category.
/// * [emojis]: List of emojis in the category.
final class EmojiCategory extends TdObject {
  
  /// **EmojiCategory** *(emojiCategory)* - basic class
  ///
  /// Contains a list of similar emoji to search for in getStickers and searchStickers.
  ///
  /// * [name]: Name of the category.
  /// * [icon]: Custom emoji sticker, which represents icon of the category.
  /// * [emojis]: List of emojis in the category.
  const EmojiCategory({
    required this.name,
    required this.icon,
    required this.emojis,
  });
  
  /// Name of the category
  final String name;

  /// Custom emoji sticker, which represents icon of the category
  final Sticker icon;

  /// List of emojis in the category
  final List<String> emojis;
  
  /// Parse from a json
  factory EmojiCategory.fromJson(Map<String, dynamic> json) => EmojiCategory(
    name: json['name'],
    icon: Sticker.fromJson(json['icon']),
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
      "icon": icon.toJson(),
      "emojis": emojis.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Name of the category
  /// * [icon]: Custom emoji sticker, which represents icon of the category
  /// * [emojis]: List of emojis in the category
  EmojiCategory copyWith({
    String? name,
    Sticker? icon,
    List<String>? emojis,
  }) => EmojiCategory(
    name: name ?? this.name,
    icon: icon ?? this.icon,
    emojis: emojis ?? this.emojis,
  );

  /// TDLib object type
  static const String objectType = 'emojiCategory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
