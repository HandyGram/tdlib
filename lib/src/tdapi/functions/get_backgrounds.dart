part of '../tdapi.dart';

/// **GetBackgrounds** *(getBackgrounds)* - TDLib function
///
/// Returns backgrounds installed by the user.
///
/// * [forDarkTheme]: Pass true to order returned backgrounds for a dark theme.
///
/// [Backgrounds] is returned on completion.
final class GetBackgrounds extends TdFunction {
  
  /// **GetBackgrounds** *(getBackgrounds)* - TDLib function
  ///
  /// Returns backgrounds installed by the user.
  ///
  /// * [forDarkTheme]: Pass true to order returned backgrounds for a dark theme.
  ///
  /// [Backgrounds] is returned on completion.
  const GetBackgrounds({
    required this.forDarkTheme,
  });
  
  /// Pass true to order returned backgrounds for a dark theme
  final bool forDarkTheme;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "for_dark_theme": forDarkTheme,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [for_dark_theme]: Pass true to order returned backgrounds for a dark theme
  GetBackgrounds copyWith({
    bool? forDarkTheme,
  }) => GetBackgrounds(
    forDarkTheme: forDarkTheme ?? this.forDarkTheme,
  );

  /// TDLib object type
  static const String objectType = 'getBackgrounds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
