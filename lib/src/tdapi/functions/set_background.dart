part of '../tdapi.dart';

/// **SetBackground** *(setBackground)* - TDLib function
///
/// Changes the background selected by the user; adds background to the list of installed backgrounds.
///
/// * [background]: The input background to use; pass null to create a new filled background or to remove the current background *(optional)*.
/// * [type]: Background type; pass null to use the default type of the remote background or to remove the current background *(optional)*.
/// * [forDarkTheme]: Pass true if the background is changed for a dark theme.
///
/// [Background] is returned on completion.
final class SetBackground extends TdFunction {
  
  /// **SetBackground** *(setBackground)* - TDLib function
  ///
  /// Changes the background selected by the user; adds background to the list of installed backgrounds.
  ///
  /// * [background]: The input background to use; pass null to create a new filled background or to remove the current background *(optional)*.
  /// * [type]: Background type; pass null to use the default type of the remote background or to remove the current background *(optional)*.
  /// * [forDarkTheme]: Pass true if the background is changed for a dark theme.
  ///
  /// [Background] is returned on completion.
  const SetBackground({
    this.background,
    this.type,
    required this.forDarkTheme,
  });
  
  /// The input background to use; pass null to create a new filled background or to remove the current background
  final InputBackground? background;

  /// Background type; pass null to use the default type of the remote background or to remove the current background
  final BackgroundType? type;

  /// Pass true if the background is changed for a dark theme
  final bool forDarkTheme;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "background": background?.toJson(),
      "type": type?.toJson(),
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [background]: The input background to use; pass null to create a new filled background or to remove the current background
  /// * [type]: Background type; pass null to use the default type of the remote background or to remove the current background
  /// * [for_dark_theme]: Pass true if the background is changed for a dark theme
  SetBackground copyWith({
    InputBackground? background,
    BackgroundType? type,
    bool? forDarkTheme,
  }) => SetBackground(
    background: background ?? this.background,
    type: type ?? this.type,
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  /// TDLib object type
  static const String objectType = 'setBackground';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
