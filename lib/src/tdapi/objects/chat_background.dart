part of '../tdapi.dart';

/// **ChatBackground** *(chatBackground)* - basic class
///
/// Describes a background set for a specific chat.
///
/// * [background]: The background.
/// * [darkThemeDimming]: Dimming of the background in dark themes, as a percentage; 0-100.
final class ChatBackground extends TdObject {
  
  /// **ChatBackground** *(chatBackground)* - basic class
  ///
  /// Describes a background set for a specific chat.
  ///
  /// * [background]: The background.
  /// * [darkThemeDimming]: Dimming of the background in dark themes, as a percentage; 0-100.
  const ChatBackground({
    required this.background,
    required this.darkThemeDimming,
  });
  
  /// The background 
  final Background background;

  /// Dimming of the background in dark themes, as a percentage; 0-100
  final int darkThemeDimming;
  
  /// Parse from a json
  factory ChatBackground.fromJson(Map<String, dynamic> json) => ChatBackground(
    background: Background.fromJson(json['background']),
    darkThemeDimming: json['dark_theme_dimming'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "background": background.toJson(),
      "dark_theme_dimming": darkThemeDimming,
		};
	}

  
  ChatBackground copyWith({
    Background? background,
    int? darkThemeDimming,
  }) => ChatBackground(
    background: background ?? this.background,
    darkThemeDimming: darkThemeDimming ?? this.darkThemeDimming,
  );

  static const String objectType = 'chatBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
