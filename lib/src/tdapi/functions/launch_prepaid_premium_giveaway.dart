part of '../tdapi.dart';

/// **LaunchPrepaidPremiumGiveaway** *(launchPrepaidPremiumGiveaway)* - TDLib function
///
/// Launches a prepaid Telegram Premium giveaway.
///
/// * [giveawayId]: Unique identifier of the prepaid giveaway.
/// * [parameters]: Giveaway parameters.
///
/// [Ok] is returned on completion.
final class LaunchPrepaidPremiumGiveaway extends TdFunction {
  
  /// **LaunchPrepaidPremiumGiveaway** *(launchPrepaidPremiumGiveaway)* - TDLib function
  ///
  /// Launches a prepaid Telegram Premium giveaway.
  ///
  /// * [giveawayId]: Unique identifier of the prepaid giveaway.
  /// * [parameters]: Giveaway parameters.
  ///
  /// [Ok] is returned on completion.
  const LaunchPrepaidPremiumGiveaway({
    required this.giveawayId,
    required this.parameters,
  });
  
  /// Unique identifier of the prepaid giveaway
  final int giveawayId;

  /// Giveaway parameters
  final PremiumGiveawayParameters parameters;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "giveaway_id": giveawayId,
      "parameters": parameters.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [giveaway_id]: Unique identifier of the prepaid giveaway
  /// * [parameters]: Giveaway parameters
  LaunchPrepaidPremiumGiveaway copyWith({
    int? giveawayId,
    PremiumGiveawayParameters? parameters,
  }) => LaunchPrepaidPremiumGiveaway(
    giveawayId: giveawayId ?? this.giveawayId,
    parameters: parameters ?? this.parameters,
  );

  /// TDLib object type
  static const String defaultObjectId = 'launchPrepaidPremiumGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
