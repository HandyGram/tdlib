part of '../tdapi.dart';

/// **GetMemoryStatistics** *(getMemoryStatistics)* - TDLib function
///
/// Returns memory statistics.
///
/// * [full]: Full memory statistics calculation.
///
/// [MemoryStatistics] is returned on completion.
final class GetMemoryStatistics extends TdFunction {
  
  /// **GetMemoryStatistics** *(getMemoryStatistics)* - TDLib function
  ///
  /// Returns memory statistics.
  ///
  /// * [full]: Full memory statistics calculation.
  ///
  /// [MemoryStatistics] is returned on completion.
  const GetMemoryStatistics({
    required this.full,
  });
  
  /// Full memory statistics calculation
  final bool full;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "full": full,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [full]: Full memory statistics calculation
  GetMemoryStatistics copyWith({
    bool? full,
  }) => GetMemoryStatistics(
    full: full ?? this.full,
  );

  /// TDLib object type
  static const String defaultObjectId = 'getMemoryStatistics';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
