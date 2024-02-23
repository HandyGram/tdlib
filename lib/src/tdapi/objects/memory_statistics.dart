part of '../tdapi.dart';

/// **MemoryStatistics** *(memoryStatistics)* - basic class
///
/// Contains memory statistics.
///
/// * [statistics]: Memory statistics in an unspecified human-readable format.
final class MemoryStatistics extends TdObject {
  
  /// **MemoryStatistics** *(memoryStatistics)* - basic class
  ///
  /// Contains memory statistics.
  ///
  /// * [statistics]: Memory statistics in an unspecified human-readable format.
  const MemoryStatistics({
    required this.statistics,
    this.extra,
    this.clientId,
  });
  
  /// Memory statistics in an unspecified human-readable format
  final String statistics;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MemoryStatistics.fromJson(Map<String, dynamic> json) => MemoryStatistics(
    statistics: json['statistics'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "statistics": statistics,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [statistics]: Memory statistics in an unspecified human-readable format
  MemoryStatistics copyWith({
    String? statistics,
    dynamic extra,
    int? clientId,
  }) => MemoryStatistics(
    statistics: statistics ?? this.statistics,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'memoryStatistics';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
