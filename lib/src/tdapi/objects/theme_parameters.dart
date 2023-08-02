part of '../tdapi.dart';

/// **ThemeParameters** *(themeParameters)* - basic class
///
/// Contains parameters of the application theme.
///
/// * [backgroundColor]: A color of the background in the RGB24 format.
/// * [secondaryBackgroundColor]: A secondary color for the background in the RGB24 format.
/// * [textColor]: A color of text in the RGB24 format.
/// * [hintColor]: A color of hints in the RGB24 format.
/// * [linkColor]: A color of links in the RGB24 format.
/// * [buttonColor]: A color of the buttons in the RGB24 format.
/// * [buttonTextColor]: A color of text on the buttons in the RGB24 format.
final class ThemeParameters extends TdObject {
  
  /// **ThemeParameters** *(themeParameters)* - basic class
  ///
  /// Contains parameters of the application theme.
  ///
  /// * [backgroundColor]: A color of the background in the RGB24 format.
  /// * [secondaryBackgroundColor]: A secondary color for the background in the RGB24 format.
  /// * [textColor]: A color of text in the RGB24 format.
  /// * [hintColor]: A color of hints in the RGB24 format.
  /// * [linkColor]: A color of links in the RGB24 format.
  /// * [buttonColor]: A color of the buttons in the RGB24 format.
  /// * [buttonTextColor]: A color of text on the buttons in the RGB24 format.
  const ThemeParameters({
    required this.backgroundColor,
    required this.secondaryBackgroundColor,
    required this.textColor,
    required this.hintColor,
    required this.linkColor,
    required this.buttonColor,
    required this.buttonTextColor,
  });
  
  /// A color of the background in the RGB24 format
  final int backgroundColor;

  /// A secondary color for the background in the RGB24 format
  final int secondaryBackgroundColor;

  /// A color of text in the RGB24 format
  final int textColor;

  /// A color of hints in the RGB24 format
  final int hintColor;

  /// A color of links in the RGB24 format
  final int linkColor;

  /// A color of the buttons in the RGB24 format
  final int buttonColor;

  /// A color of text on the buttons in the RGB24 format
  final int buttonTextColor;
  
  /// Parse from a json
  factory ThemeParameters.fromJson(Map<String, dynamic> json) => ThemeParameters(
    backgroundColor: json['background_color'],
    secondaryBackgroundColor: json['secondary_background_color'],
    textColor: json['text_color'],
    hintColor: json['hint_color'],
    linkColor: json['link_color'],
    buttonColor: json['button_color'],
    buttonTextColor: json['button_text_color'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background_color": backgroundColor,
      "secondary_background_color": secondaryBackgroundColor,
      "text_color": textColor,
      "hint_color": hintColor,
      "link_color": linkColor,
      "button_color": buttonColor,
      "button_text_color": buttonTextColor,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [background_color]: A color of the background in the RGB24 format
  /// * [secondary_background_color]: A secondary color for the background in the RGB24 format
  /// * [text_color]: A color of text in the RGB24 format
  /// * [hint_color]: A color of hints in the RGB24 format
  /// * [link_color]: A color of links in the RGB24 format
  /// * [button_color]: A color of the buttons in the RGB24 format
  /// * [button_text_color]: A color of text on the buttons in the RGB24 format
  ThemeParameters copyWith({
    int? backgroundColor,
    int? secondaryBackgroundColor,
    int? textColor,
    int? hintColor,
    int? linkColor,
    int? buttonColor,
    int? buttonTextColor,
  }) => ThemeParameters(
    backgroundColor: backgroundColor ?? this.backgroundColor,
    secondaryBackgroundColor: secondaryBackgroundColor ?? this.secondaryBackgroundColor,
    textColor: textColor ?? this.textColor,
    hintColor: hintColor ?? this.hintColor,
    linkColor: linkColor ?? this.linkColor,
    buttonColor: buttonColor ?? this.buttonColor,
    buttonTextColor: buttonTextColor ?? this.buttonTextColor,
  );

  /// TDLib object type
  static const String objectType = 'themeParameters';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
