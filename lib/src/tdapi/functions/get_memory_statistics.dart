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
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "full": full,
      "@extra": extra,
		};
	}

  
  GetMemoryStatistics copyWith({
    bool? full,
  }) => GetMemoryStatistics(
    full: full ?? this.full,
  );

  static const String objectType = 'getMemoryStatistics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
