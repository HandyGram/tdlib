part of '../tdapi.dart';

/// **GroupCallVideoQuality** *(groupCallVideoQuality)* - parent
///
/// Describes the quality of a group call video.
sealed class GroupCallVideoQuality extends TdObject {
  
  /// **GroupCallVideoQuality** *(groupCallVideoQuality)* - parent
  ///
  /// Describes the quality of a group call video.
  const GroupCallVideoQuality();
  
  /// a GroupCallVideoQuality return type can be :
  /// * [GroupCallVideoQualityThumbnail]
  /// * [GroupCallVideoQualityMedium]
  /// * [GroupCallVideoQualityFull]
  factory GroupCallVideoQuality.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case GroupCallVideoQualityThumbnail.objectType:
        return GroupCallVideoQualityThumbnail.fromJson(json);
      case GroupCallVideoQualityMedium.objectType:
        return GroupCallVideoQualityMedium.fromJson(json);
      case GroupCallVideoQualityFull.objectType:
        return GroupCallVideoQualityFull.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of GroupCallVideoQuality)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  GroupCallVideoQuality copyWith();

  /// TDLib object type
  static const String objectType = 'groupCallVideoQuality';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
///
/// The worst available video quality.
final class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityThumbnail** *(groupCallVideoQualityThumbnail)* - child of GroupCallVideoQuality
  ///
  /// The worst available video quality.
  const GroupCallVideoQualityThumbnail();
  
  /// Parse from a json
  factory GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityThumbnail();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  GroupCallVideoQualityThumbnail copyWith() => const GroupCallVideoQualityThumbnail();

  /// TDLib object type
  static const String objectType = 'groupCallVideoQualityThumbnail';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
///
/// The medium video quality.
final class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityMedium** *(groupCallVideoQualityMedium)* - child of GroupCallVideoQuality
  ///
  /// The medium video quality.
  const GroupCallVideoQualityMedium();
  
  /// Parse from a json
  factory GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityMedium();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  GroupCallVideoQualityMedium copyWith() => const GroupCallVideoQualityMedium();

  /// TDLib object type
  static const String objectType = 'groupCallVideoQualityMedium';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
///
/// The best available video quality.
final class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  
  /// **GroupCallVideoQualityFull** *(groupCallVideoQualityFull)* - child of GroupCallVideoQuality
  ///
  /// The best available video quality.
  const GroupCallVideoQualityFull();
  
  /// Parse from a json
  factory GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json) => const GroupCallVideoQualityFull();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  GroupCallVideoQualityFull copyWith() => const GroupCallVideoQualityFull();

  /// TDLib object type
  static const String objectType = 'groupCallVideoQualityFull';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
