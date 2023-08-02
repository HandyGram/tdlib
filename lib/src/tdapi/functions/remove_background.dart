part of '../tdapi.dart';

/// **RemoveBackground** *(removeBackground)* - TDLib function
///
/// Removes background from the list of installed backgrounds.
///
/// * [backgroundId]: The background identifier.
///
/// [Ok] is returned on completion.
final class RemoveBackground extends TdFunction {
  
  /// **RemoveBackground** *(removeBackground)* - TDLib function
  ///
  /// Removes background from the list of installed backgrounds.
  ///
  /// * [backgroundId]: The background identifier.
  ///
  /// [Ok] is returned on completion.
  const RemoveBackground({
    required this.backgroundId,
  });
  
  /// The background identifier
  final int backgroundId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "background_id": backgroundId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [background_id]: The background identifier
  RemoveBackground copyWith({
    int? backgroundId,
  }) => RemoveBackground(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  /// TDLib object type
  static const String objectType = 'removeBackground';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
