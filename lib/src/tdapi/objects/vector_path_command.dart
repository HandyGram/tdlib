part of '../tdapi.dart';

/// **VectorPathCommand** *(vectorPathCommand)* - parent
///
/// Represents a vector path command.
sealed class VectorPathCommand extends TdObject {
  
  /// **VectorPathCommand** *(vectorPathCommand)* - parent
  ///
  /// Represents a vector path command.
  const VectorPathCommand();
  
  /// a VectorPathCommand return type can be :
  /// * [VectorPathCommandLine]
  /// * [VectorPathCommandCubicBezierCurve]
  factory VectorPathCommand.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case VectorPathCommandLine.objectType:
        return VectorPathCommandLine.fromJson(json);
      case VectorPathCommandCubicBezierCurve.objectType:
        return VectorPathCommandCubicBezierCurve.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of VectorPathCommand)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  VectorPathCommand copyWith();

  /// TDLib object type
  static const String objectType = 'vectorPathCommand';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **VectorPathCommandLine** *(vectorPathCommandLine)* - child of VectorPathCommand
///
/// A straight line to a given point.
///
/// * [endPoint]: The end point of the straight line.
final class VectorPathCommandLine extends VectorPathCommand {
  
  /// **VectorPathCommandLine** *(vectorPathCommandLine)* - child of VectorPathCommand
  ///
  /// A straight line to a given point.
  ///
  /// * [endPoint]: The end point of the straight line.
  const VectorPathCommandLine({
    required this.endPoint,
  });
  
  /// The end point of the straight line
  final Point endPoint;
  
  /// Parse from a json
  factory VectorPathCommandLine.fromJson(Map<String, dynamic> json) => VectorPathCommandLine(
    endPoint: Point.fromJson(json['end_point']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "end_point": endPoint.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [end_point]: The end point of the straight line
  @override
  VectorPathCommandLine copyWith({
    Point? endPoint,
  }) => VectorPathCommandLine(
    endPoint: endPoint ?? this.endPoint,
  );

  /// TDLib object type
  static const String objectType = 'vectorPathCommandLine';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
///
/// A cubic B.
final class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  
  /// **VectorPathCommandCubicBezierCurve** *(vectorPathCommandCubicBezierCurve)* - child of VectorPathCommand
  ///
  /// A cubic B.
  const VectorPathCommandCubicBezierCurve();
  
  /// Parse from a json
  factory VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) => const VectorPathCommandCubicBezierCurve();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  VectorPathCommandCubicBezierCurve copyWith() => const VectorPathCommandCubicBezierCurve();

  /// TDLib object type
  static const String objectType = 'vectorPathCommandCubicBezierCurve';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
