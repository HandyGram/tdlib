part of '../tdapi.dart';

/// **InputStoryAreas** *(inputStoryAreas)* - basic class
///
/// Contains a list of story areas to be added.
///
/// * [areas]: List of 0-10 input story areas.
final class InputStoryAreas extends TdObject {
  
  /// **InputStoryAreas** *(inputStoryAreas)* - basic class
  ///
  /// Contains a list of story areas to be added.
  ///
  /// * [areas]: List of 0-10 input story areas.
  const InputStoryAreas({
    required this.areas,
  });
  
  /// List of 0-10 input story areas
  final List<InputStoryArea> areas;
  
  /// Parse from a json
  factory InputStoryAreas.fromJson(Map<String, dynamic> json) => InputStoryAreas(
    areas: List<InputStoryArea>.from((json['areas'] ?? []).map((item) => InputStoryArea.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "areas": areas.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [areas]: List of 0-10 input story areas
  InputStoryAreas copyWith({
    List<InputStoryArea>? areas,
  }) => InputStoryAreas(
    areas: areas ?? this.areas,
  );

  /// TDLib object type
  static const String objectType = 'inputStoryAreas';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
