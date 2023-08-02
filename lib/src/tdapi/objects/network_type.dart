part of '../tdapi.dart';

/// **NetworkType** *(networkType)* - parent
///
/// Represents the type of a network.
sealed class NetworkType extends TdObject {
  
  /// **NetworkType** *(networkType)* - parent
  ///
  /// Represents the type of a network.
  const NetworkType();
  
  /// a NetworkType return type can be :
  /// * [NetworkTypeNone]
  /// * [NetworkTypeMobile]
  /// * [NetworkTypeMobileRoaming]
  /// * [NetworkTypeWiFi]
  /// * [NetworkTypeOther]
  factory NetworkType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NetworkTypeNone.objectType:
        return NetworkTypeNone.fromJson(json);
      case NetworkTypeMobile.objectType:
        return NetworkTypeMobile.fromJson(json);
      case NetworkTypeMobileRoaming.objectType:
        return NetworkTypeMobileRoaming.fromJson(json);
      case NetworkTypeWiFi.objectType:
        return NetworkTypeWiFi.fromJson(json);
      case NetworkTypeOther.objectType:
        return NetworkTypeOther.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of NetworkType)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  NetworkType copyWith();

  /// TDLib object type
  static const String objectType = 'networkType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
///
/// The network is not available.
final class NetworkTypeNone extends NetworkType {
  
  /// **NetworkTypeNone** *(networkTypeNone)* - child of NetworkType
  ///
  /// The network is not available.
  const NetworkTypeNone();
  
  /// Parse from a json
  factory NetworkTypeNone.fromJson(Map<String, dynamic> json) => const NetworkTypeNone();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  NetworkTypeNone copyWith() => const NetworkTypeNone();

  /// TDLib object type
  static const String objectType = 'networkTypeNone';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
///
/// A mobile network.
final class NetworkTypeMobile extends NetworkType {
  
  /// **NetworkTypeMobile** *(networkTypeMobile)* - child of NetworkType
  ///
  /// A mobile network.
  const NetworkTypeMobile();
  
  /// Parse from a json
  factory NetworkTypeMobile.fromJson(Map<String, dynamic> json) => const NetworkTypeMobile();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  NetworkTypeMobile copyWith() => const NetworkTypeMobile();

  /// TDLib object type
  static const String objectType = 'networkTypeMobile';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
///
/// A mobile roaming network.
final class NetworkTypeMobileRoaming extends NetworkType {
  
  /// **NetworkTypeMobileRoaming** *(networkTypeMobileRoaming)* - child of NetworkType
  ///
  /// A mobile roaming network.
  const NetworkTypeMobileRoaming();
  
  /// Parse from a json
  factory NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json) => const NetworkTypeMobileRoaming();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  NetworkTypeMobileRoaming copyWith() => const NetworkTypeMobileRoaming();

  /// TDLib object type
  static const String objectType = 'networkTypeMobileRoaming';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
///
/// A Wi-Fi network.
final class NetworkTypeWiFi extends NetworkType {
  
  /// **NetworkTypeWiFi** *(networkTypeWiFi)* - child of NetworkType
  ///
  /// A Wi-Fi network.
  const NetworkTypeWiFi();
  
  /// Parse from a json
  factory NetworkTypeWiFi.fromJson(Map<String, dynamic> json) => const NetworkTypeWiFi();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  NetworkTypeWiFi copyWith() => const NetworkTypeWiFi();

  /// TDLib object type
  static const String objectType = 'networkTypeWiFi';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
///
/// A different network type (e.g., Ethernet network).
final class NetworkTypeOther extends NetworkType {
  
  /// **NetworkTypeOther** *(networkTypeOther)* - child of NetworkType
  ///
  /// A different network type (e.g., Ethernet network).
  const NetworkTypeOther();
  
  /// Parse from a json
  factory NetworkTypeOther.fromJson(Map<String, dynamic> json) => const NetworkTypeOther();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  NetworkTypeOther copyWith() => const NetworkTypeOther();

  /// TDLib object type
  static const String objectType = 'networkTypeOther';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
