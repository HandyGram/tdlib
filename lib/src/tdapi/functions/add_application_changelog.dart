part of '../tdapi.dart';

/// **AddApplicationChangelog** *(addApplicationChangelog)* - TDLib function
///
/// Adds server-provided application changelog as messages to the chat 777000 (Telegram); for official applications only. Returns a 404 error if nothing changed.
///
/// * [previousApplicationVersion]: The previous application version.
///
/// [Ok] is returned on completion.
final class AddApplicationChangelog extends TdFunction {
  
  /// **AddApplicationChangelog** *(addApplicationChangelog)* - TDLib function
  ///
  /// Adds server-provided application changelog as messages to the chat 777000 (Telegram); for official applications only. Returns a 404 error if nothing changed.
  ///
  /// * [previousApplicationVersion]: The previous application version.
  ///
  /// [Ok] is returned on completion.
  const AddApplicationChangelog({
    required this.previousApplicationVersion,
  });
  
  /// The previous application version
  final String previousApplicationVersion;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "previous_application_version": previousApplicationVersion,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [previous_application_version]: The previous application version
  AddApplicationChangelog copyWith({
    String? previousApplicationVersion,
  }) => AddApplicationChangelog(
    previousApplicationVersion: previousApplicationVersion ?? this.previousApplicationVersion,
  );

  /// TDLib object type
  static const String objectType = 'addApplicationChangelog';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
