part of '../tdapi.dart';

/// **PremiumStoryFeature** *(premiumStoryFeature)* - parent
///
/// Describes a story feature available to Premium users.
sealed class PremiumStoryFeature extends TdObject {
  
  /// **PremiumStoryFeature** *(premiumStoryFeature)* - parent
  ///
  /// Describes a story feature available to Premium users.
  const PremiumStoryFeature();
  
  /// a PremiumStoryFeature return type can be :
  /// * [PremiumStoryFeaturePriorityOrder]
  /// * [PremiumStoryFeatureStealthMode]
  /// * [PremiumStoryFeaturePermanentViewsHistory]
  /// * [PremiumStoryFeatureCustomExpirationDuration]
  /// * [PremiumStoryFeatureSaveStories]
  /// * [PremiumStoryFeatureLinksAndFormatting]
  /// * [PremiumStoryFeatureVideoQuality]
  factory PremiumStoryFeature.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PremiumStoryFeaturePriorityOrder.objectType:
        return PremiumStoryFeaturePriorityOrder.fromJson(json);
      case PremiumStoryFeatureStealthMode.objectType:
        return PremiumStoryFeatureStealthMode.fromJson(json);
      case PremiumStoryFeaturePermanentViewsHistory.objectType:
        return PremiumStoryFeaturePermanentViewsHistory.fromJson(json);
      case PremiumStoryFeatureCustomExpirationDuration.objectType:
        return PremiumStoryFeatureCustomExpirationDuration.fromJson(json);
      case PremiumStoryFeatureSaveStories.objectType:
        return PremiumStoryFeatureSaveStories.fromJson(json);
      case PremiumStoryFeatureLinksAndFormatting.objectType:
        return PremiumStoryFeatureLinksAndFormatting.fromJson(json);
      case PremiumStoryFeatureVideoQuality.objectType:
        return PremiumStoryFeatureVideoQuality.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumStoryFeature)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PremiumStoryFeature copyWith();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeature';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeaturePriorityOrder** *(premiumStoryFeaturePriorityOrder)* - child of PremiumStoryFeature
///
/// Stories of the current user are displayed before stories of non-Premium contacts, supergroups, and channels.
final class PremiumStoryFeaturePriorityOrder extends PremiumStoryFeature {
  
  /// **PremiumStoryFeaturePriorityOrder** *(premiumStoryFeaturePriorityOrder)* - child of PremiumStoryFeature
  ///
  /// Stories of the current user are displayed before stories of non-Premium contacts, supergroups, and channels.
  const PremiumStoryFeaturePriorityOrder();
  
  /// Parse from a json
  factory PremiumStoryFeaturePriorityOrder.fromJson(Map<String, dynamic> json) => const PremiumStoryFeaturePriorityOrder();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeaturePriorityOrder copyWith() => const PremiumStoryFeaturePriorityOrder();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeaturePriorityOrder';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeatureStealthMode** *(premiumStoryFeatureStealthMode)* - child of PremiumStoryFeature
///
/// The ability to hide the fact that the user viewed other's stories.
final class PremiumStoryFeatureStealthMode extends PremiumStoryFeature {
  
  /// **PremiumStoryFeatureStealthMode** *(premiumStoryFeatureStealthMode)* - child of PremiumStoryFeature
  ///
  /// The ability to hide the fact that the user viewed other's stories.
  const PremiumStoryFeatureStealthMode();
  
  /// Parse from a json
  factory PremiumStoryFeatureStealthMode.fromJson(Map<String, dynamic> json) => const PremiumStoryFeatureStealthMode();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeatureStealthMode copyWith() => const PremiumStoryFeatureStealthMode();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeatureStealthMode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeaturePermanentViewsHistory** *(premiumStoryFeaturePermanentViewsHistory)* - child of PremiumStoryFeature
///
/// The ability to check who opened the current user's stories after they expire.
final class PremiumStoryFeaturePermanentViewsHistory extends PremiumStoryFeature {
  
  /// **PremiumStoryFeaturePermanentViewsHistory** *(premiumStoryFeaturePermanentViewsHistory)* - child of PremiumStoryFeature
  ///
  /// The ability to check who opened the current user's stories after they expire.
  const PremiumStoryFeaturePermanentViewsHistory();
  
  /// Parse from a json
  factory PremiumStoryFeaturePermanentViewsHistory.fromJson(Map<String, dynamic> json) => const PremiumStoryFeaturePermanentViewsHistory();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeaturePermanentViewsHistory copyWith() => const PremiumStoryFeaturePermanentViewsHistory();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeaturePermanentViewsHistory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeatureCustomExpirationDuration** *(premiumStoryFeatureCustomExpirationDuration)* - child of PremiumStoryFeature
///
/// The ability to set custom expiration duration for stories.
final class PremiumStoryFeatureCustomExpirationDuration extends PremiumStoryFeature {
  
  /// **PremiumStoryFeatureCustomExpirationDuration** *(premiumStoryFeatureCustomExpirationDuration)* - child of PremiumStoryFeature
  ///
  /// The ability to set custom expiration duration for stories.
  const PremiumStoryFeatureCustomExpirationDuration();
  
  /// Parse from a json
  factory PremiumStoryFeatureCustomExpirationDuration.fromJson(Map<String, dynamic> json) => const PremiumStoryFeatureCustomExpirationDuration();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeatureCustomExpirationDuration copyWith() => const PremiumStoryFeatureCustomExpirationDuration();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeatureCustomExpirationDuration';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeatureSaveStories** *(premiumStoryFeatureSaveStories)* - child of PremiumStoryFeature
///
/// The ability to save other's unprotected stories.
final class PremiumStoryFeatureSaveStories extends PremiumStoryFeature {
  
  /// **PremiumStoryFeatureSaveStories** *(premiumStoryFeatureSaveStories)* - child of PremiumStoryFeature
  ///
  /// The ability to save other's unprotected stories.
  const PremiumStoryFeatureSaveStories();
  
  /// Parse from a json
  factory PremiumStoryFeatureSaveStories.fromJson(Map<String, dynamic> json) => const PremiumStoryFeatureSaveStories();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeatureSaveStories copyWith() => const PremiumStoryFeatureSaveStories();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeatureSaveStories';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeatureLinksAndFormatting** *(premiumStoryFeatureLinksAndFormatting)* - child of PremiumStoryFeature
///
/// The ability to use links and formatting in story caption.
final class PremiumStoryFeatureLinksAndFormatting extends PremiumStoryFeature {
  
  /// **PremiumStoryFeatureLinksAndFormatting** *(premiumStoryFeatureLinksAndFormatting)* - child of PremiumStoryFeature
  ///
  /// The ability to use links and formatting in story caption.
  const PremiumStoryFeatureLinksAndFormatting();
  
  /// Parse from a json
  factory PremiumStoryFeatureLinksAndFormatting.fromJson(Map<String, dynamic> json) => const PremiumStoryFeatureLinksAndFormatting();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeatureLinksAndFormatting copyWith() => const PremiumStoryFeatureLinksAndFormatting();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeatureLinksAndFormatting';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PremiumStoryFeatureVideoQuality** *(premiumStoryFeatureVideoQuality)* - child of PremiumStoryFeature
///
/// The ability to choose better quality for viewed stories.
final class PremiumStoryFeatureVideoQuality extends PremiumStoryFeature {
  
  /// **PremiumStoryFeatureVideoQuality** *(premiumStoryFeatureVideoQuality)* - child of PremiumStoryFeature
  ///
  /// The ability to choose better quality for viewed stories.
  const PremiumStoryFeatureVideoQuality();
  
  /// Parse from a json
  factory PremiumStoryFeatureVideoQuality.fromJson(Map<String, dynamic> json) => const PremiumStoryFeatureVideoQuality();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  PremiumStoryFeatureVideoQuality copyWith() => const PremiumStoryFeatureVideoQuality();

  /// TDLib object type
  static const String objectType = 'premiumStoryFeatureVideoQuality';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
