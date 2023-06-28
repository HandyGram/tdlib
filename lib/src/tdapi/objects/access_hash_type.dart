part of '../tdapi.dart';

/// **AccessHashType** *(accessHashType)* - parent
///
/// Represents the type of an access hash. The following types are possible: user, channel.
sealed class AccessHashType extends TdObject {
  
  /// **AccessHashType** *(accessHashType)* - parent
  ///
  /// Represents the type of an access hash. The following types are possible: user, channel.
  const AccessHashType();
  
  /// a AccessHashType return type can be :
  /// * [AccessHashTypeUser]
  /// * [AccessHashTypeChannel]
  factory AccessHashType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case AccessHashTypeUser.objectType:
        return AccessHashTypeUser.fromJson(json);
      case AccessHashTypeChannel.objectType:
        return AccessHashTypeChannel.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of AccessHashType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  AccessHashType copyWith();

  static const String objectType = 'accessHashType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AccessHashTypeUser** *(accessHashTypeUser)* - child of AccessHashType
///
/// An access hash of an user.
final class AccessHashTypeUser extends AccessHashType {
  
  /// **AccessHashTypeUser** *(accessHashTypeUser)* - child of AccessHashType
  ///
  /// An access hash of an user.
  const AccessHashTypeUser();
  
  /// Parse from a json
  factory AccessHashTypeUser.fromJson(Map<String, dynamic> json) => const AccessHashTypeUser();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AccessHashTypeUser copyWith() => const AccessHashTypeUser();

  static const String objectType = 'accessHashTypeUser';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AccessHashTypeChannel** *(accessHashTypeChannel)* - child of AccessHashType
///
/// An access hash of a channel.
final class AccessHashTypeChannel extends AccessHashType {
  
  /// **AccessHashTypeChannel** *(accessHashTypeChannel)* - child of AccessHashType
  ///
  /// An access hash of a channel.
  const AccessHashTypeChannel();
  
  /// Parse from a json
  factory AccessHashTypeChannel.fromJson(Map<String, dynamic> json) => const AccessHashTypeChannel();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AccessHashTypeChannel copyWith() => const AccessHashTypeChannel();

  static const String objectType = 'accessHashTypeChannel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
