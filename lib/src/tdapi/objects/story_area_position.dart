part of '../tdapi.dart';

/// **StoryAreaPosition** *(storyAreaPosition)* - basic class
///
/// Describes position of a clickable rectangle area on a story media.
///
/// * [xPercentage]: The abscissa of the rectangle's center, as a percentage of the media width.
/// * [yPercentage]: The ordinate of the rectangle's center, as a percentage of the media height.
/// * [widthPercentage]: The width of the rectangle, as a percentage of the media width.
/// * [heightPercentage]: The height of the rectangle, as a percentage of the media height.
/// * [rotationAngle]: Clockwise rotation angle of the rectangle, in degrees; 0-360.
final class StoryAreaPosition extends TdObject {
  
  /// **StoryAreaPosition** *(storyAreaPosition)* - basic class
  ///
  /// Describes position of a clickable rectangle area on a story media.
  ///
  /// * [xPercentage]: The abscissa of the rectangle's center, as a percentage of the media width.
  /// * [yPercentage]: The ordinate of the rectangle's center, as a percentage of the media height.
  /// * [widthPercentage]: The width of the rectangle, as a percentage of the media width.
  /// * [heightPercentage]: The height of the rectangle, as a percentage of the media height.
  /// * [rotationAngle]: Clockwise rotation angle of the rectangle, in degrees; 0-360.
  const StoryAreaPosition({
    required this.xPercentage,
    required this.yPercentage,
    required this.widthPercentage,
    required this.heightPercentage,
    required this.rotationAngle,
  });
  
  /// The abscissa of the rectangle's center, as a percentage of the media width
  final double xPercentage;

  /// The ordinate of the rectangle's center, as a percentage of the media height
  final double yPercentage;

  /// The width of the rectangle, as a percentage of the media width
  final double widthPercentage;

  /// The height of the rectangle, as a percentage of the media height
  final double heightPercentage;

  /// Clockwise rotation angle of the rectangle, in degrees; 0-360
  final double rotationAngle;
  
  /// Parse from a json
  factory StoryAreaPosition.fromJson(Map<String, dynamic> json) => StoryAreaPosition(
    xPercentage: json['x_percentage'],
    yPercentage: json['y_percentage'],
    widthPercentage: json['width_percentage'],
    heightPercentage: json['height_percentage'],
    rotationAngle: json['rotation_angle'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "x_percentage": xPercentage,
      "y_percentage": yPercentage,
      "width_percentage": widthPercentage,
      "height_percentage": heightPercentage,
      "rotation_angle": rotationAngle,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [x_percentage]: The abscissa of the rectangle's center, as a percentage of the media width
  /// * [y_percentage]: The ordinate of the rectangle's center, as a percentage of the media height
  /// * [width_percentage]: The width of the rectangle, as a percentage of the media width
  /// * [height_percentage]: The height of the rectangle, as a percentage of the media height
  /// * [rotation_angle]: Clockwise rotation angle of the rectangle, in degrees; 0-360
  StoryAreaPosition copyWith({
    double? xPercentage,
    double? yPercentage,
    double? widthPercentage,
    double? heightPercentage,
    double? rotationAngle,
  }) => StoryAreaPosition(
    xPercentage: xPercentage ?? this.xPercentage,
    yPercentage: yPercentage ?? this.yPercentage,
    widthPercentage: widthPercentage ?? this.widthPercentage,
    heightPercentage: heightPercentage ?? this.heightPercentage,
    rotationAngle: rotationAngle ?? this.rotationAngle,
  );

  /// TDLib object type
  static const String defaultObjectId = 'storyAreaPosition';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
