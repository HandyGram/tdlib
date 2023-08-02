part of '../tdapi.dart';

/// **BackgroundFill** *(backgroundFill)* - parent
///
/// Describes a fill of a background.
sealed class BackgroundFill extends TdObject {
  
  /// **BackgroundFill** *(backgroundFill)* - parent
  ///
  /// Describes a fill of a background.
  const BackgroundFill();
  
  /// a BackgroundFill return type can be :
  /// * [BackgroundFillSolid]
  /// * [BackgroundFillGradient]
  /// * [BackgroundFillFreeformGradient]
  factory BackgroundFill.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case BackgroundFillSolid.objectType:
        return BackgroundFillSolid.fromJson(json);
      case BackgroundFillGradient.objectType:
        return BackgroundFillGradient.fromJson(json);
      case BackgroundFillFreeformGradient.objectType:
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of BackgroundFill)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  BackgroundFill copyWith();

  /// TDLib object type
  static const String objectType = 'backgroundFill';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BackgroundFillSolid** *(backgroundFillSolid)* - child of BackgroundFill
///
/// Describes a solid fill of a background.
///
/// * [color]: A color of the background in the RGB24 format.
final class BackgroundFillSolid extends BackgroundFill {
  
  /// **BackgroundFillSolid** *(backgroundFillSolid)* - child of BackgroundFill
  ///
  /// Describes a solid fill of a background.
  ///
  /// * [color]: A color of the background in the RGB24 format.
  const BackgroundFillSolid({
    required this.color,
  });
  
  /// A color of the background in the RGB24 format
  final int color;
  
  /// Parse from a json
  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) => BackgroundFillSolid(
    color: json['color'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "color": color,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [color]: A color of the background in the RGB24 format
  @override
  BackgroundFillSolid copyWith({
    int? color,
  }) => BackgroundFillSolid(
    color: color ?? this.color,
  );

  /// TDLib object type
  static const String objectType = 'backgroundFillSolid';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BackgroundFillGradient** *(backgroundFillGradient)* - child of BackgroundFill
///
/// Describes a gradient fill of a background.
///
/// * [topColor]: A top color of the background in the RGB24 format.
/// * [bottomColor]: A bottom color of the background in the RGB24 format.
/// * [rotationAngle]: Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45.
final class BackgroundFillGradient extends BackgroundFill {
  
  /// **BackgroundFillGradient** *(backgroundFillGradient)* - child of BackgroundFill
  ///
  /// Describes a gradient fill of a background.
  ///
  /// * [topColor]: A top color of the background in the RGB24 format.
  /// * [bottomColor]: A bottom color of the background in the RGB24 format.
  /// * [rotationAngle]: Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45.
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });
  
  /// A top color of the background in the RGB24 format
  final int topColor;

  /// A bottom color of the background in the RGB24 format
  final int bottomColor;

  /// Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45
  final int rotationAngle;
  
  /// Parse from a json
  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) => BackgroundFillGradient(
    topColor: json['top_color'],
    bottomColor: json['bottom_color'],
    rotationAngle: json['rotation_angle'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "top_color": topColor,
      "bottom_color": bottomColor,
      "rotation_angle": rotationAngle,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [top_color]: A top color of the background in the RGB24 format
  /// * [bottom_color]: A bottom color of the background in the RGB24 format
  /// * [rotation_angle]: Clockwise rotation angle of the gradient, in degrees; 0-359. Must always be divisible by 45
  @override
  BackgroundFillGradient copyWith({
    int? topColor,
    int? bottomColor,
    int? rotationAngle,
  }) => BackgroundFillGradient(
    topColor: topColor ?? this.topColor,
    bottomColor: bottomColor ?? this.bottomColor,
    rotationAngle: rotationAngle ?? this.rotationAngle,
  );

  /// TDLib object type
  static const String objectType = 'backgroundFillGradient';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **BackgroundFillFreeformGradient** *(backgroundFillFreeformGradient)* - child of BackgroundFill
///
/// Describes a freeform gradient fill of a background.
///
/// * [colors]: A list of 3 or 4 colors of the freeform gradients in the RGB24 format.
final class BackgroundFillFreeformGradient extends BackgroundFill {
  
  /// **BackgroundFillFreeformGradient** *(backgroundFillFreeformGradient)* - child of BackgroundFill
  ///
  /// Describes a freeform gradient fill of a background.
  ///
  /// * [colors]: A list of 3 or 4 colors of the freeform gradients in the RGB24 format.
  const BackgroundFillFreeformGradient({
    required this.colors,
  });
  
  /// A list of 3 or 4 colors of the freeform gradients in the RGB24 format
  final List<int> colors;
  
  /// Parse from a json
  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) => BackgroundFillFreeformGradient(
    colors: List<int>.from((json['colors'] ?? []).map((item) => item).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "colors": colors.map((i) => i).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [colors]: A list of 3 or 4 colors of the freeform gradients in the RGB24 format
  @override
  BackgroundFillFreeformGradient copyWith({
    List<int>? colors,
  }) => BackgroundFillFreeformGradient(
    colors: colors ?? this.colors,
  );

  /// TDLib object type
  static const String objectType = 'backgroundFillFreeformGradient';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
