part of '../tdapi.dart';

/// **BusinessOpeningHoursInterval** *(businessOpeningHoursInterval)* - basic class
///
/// Describes an interval of time when the business is open.
///
/// * [startMinute]: The first minute of the interval since start of the week; 0-7*24*60.
/// * [endMinute]: The first minute after the end of the interval since start of the week; 1-8*24*60.
final class BusinessOpeningHoursInterval extends TdObject {
  /// **BusinessOpeningHoursInterval** *(businessOpeningHoursInterval)* - basic class
  ///
  /// Describes an interval of time when the business is open.
  ///
  /// * [startMinute]: The first minute of the interval since start of the week; 0-7*24*60.
  /// * [endMinute]: The first minute after the end of the interval since start of the week; 1-8*24*60.
  const BusinessOpeningHoursInterval({
    required this.startMinute,
    required this.endMinute,
  });

  /// The first minute of the interval since start of the week; 0-7*24*60
  final int startMinute;

  /// The first minute after the end of the interval since start of the week; 1-8*24*60
  final int endMinute;

  /// Parse from a json
  factory BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) =>
      BusinessOpeningHoursInterval(
        startMinute: json['start_minute'],
        endMinute: json['end_minute'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "start_minute": startMinute,
      "end_minute": endMinute,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [start_minute]: The first minute of the interval since start of the week; 0-7*24*60
  /// * [end_minute]: The first minute after the end of the interval since start of the week; 1-8*24*60
  BusinessOpeningHoursInterval copyWith({
    int? startMinute,
    int? endMinute,
  }) =>
      BusinessOpeningHoursInterval(
        startMinute: startMinute ?? this.startMinute,
        endMinute: endMinute ?? this.endMinute,
      );

  /// TDLib object type
  static const String defaultObjectId = 'businessOpeningHoursInterval';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
