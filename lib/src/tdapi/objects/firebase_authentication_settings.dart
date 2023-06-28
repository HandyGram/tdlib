part of '../tdapi.dart';

/// **FirebaseAuthenticationSettings** *(firebaseAuthenticationSettings)* - parent
///
/// Contains settings for Firebase Authentication in the official applications.
sealed class FirebaseAuthenticationSettings extends TdObject {
  
  /// **FirebaseAuthenticationSettings** *(firebaseAuthenticationSettings)* - parent
  ///
  /// Contains settings for Firebase Authentication in the official applications.
  const FirebaseAuthenticationSettings();
  
  /// a FirebaseAuthenticationSettings return type can be :
  /// * [FirebaseAuthenticationSettingsAndroid]
  /// * [FirebaseAuthenticationSettingsIos]
  factory FirebaseAuthenticationSettings.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case FirebaseAuthenticationSettingsAndroid.objectType:
        return FirebaseAuthenticationSettingsAndroid.fromJson(json);
      case FirebaseAuthenticationSettingsIos.objectType:
        return FirebaseAuthenticationSettingsIos.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of FirebaseAuthenticationSettings)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  FirebaseAuthenticationSettings copyWith();

  static const String objectType = 'firebaseAuthenticationSettings';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FirebaseAuthenticationSettingsAndroid** *(firebaseAuthenticationSettingsAndroid)* - child of FirebaseAuthenticationSettings
///
/// Settings for Firebase Authentication in the official Android application.
final class FirebaseAuthenticationSettingsAndroid extends FirebaseAuthenticationSettings {
  
  /// **FirebaseAuthenticationSettingsAndroid** *(firebaseAuthenticationSettingsAndroid)* - child of FirebaseAuthenticationSettings
  ///
  /// Settings for Firebase Authentication in the official Android application.
  const FirebaseAuthenticationSettingsAndroid();
  
  /// Parse from a json
  factory FirebaseAuthenticationSettingsAndroid.fromJson(Map<String, dynamic> json) => const FirebaseAuthenticationSettingsAndroid();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  FirebaseAuthenticationSettingsAndroid copyWith() => const FirebaseAuthenticationSettingsAndroid();

  static const String objectType = 'firebaseAuthenticationSettingsAndroid';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **FirebaseAuthenticationSettingsIos** *(firebaseAuthenticationSettingsIos)* - child of FirebaseAuthenticationSettings
///
/// Settings for Firebase Authentication in the official iOS application.
///
/// * [deviceToken]: Device token from Apple Push Notification service.
/// * [isAppSandbox]: True, if App Sandbox is enabled.
final class FirebaseAuthenticationSettingsIos extends FirebaseAuthenticationSettings {
  
  /// **FirebaseAuthenticationSettingsIos** *(firebaseAuthenticationSettingsIos)* - child of FirebaseAuthenticationSettings
  ///
  /// Settings for Firebase Authentication in the official iOS application.
  ///
  /// * [deviceToken]: Device token from Apple Push Notification service.
  /// * [isAppSandbox]: True, if App Sandbox is enabled.
  const FirebaseAuthenticationSettingsIos({
    required this.deviceToken,
    required this.isAppSandbox,
  });
  
  /// Device token from Apple Push Notification service 
  final String deviceToken;

  /// True, if App Sandbox is enabled
  final bool isAppSandbox;
  
  /// Parse from a json
  factory FirebaseAuthenticationSettingsIos.fromJson(Map<String, dynamic> json) => FirebaseAuthenticationSettingsIos(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
		};
	}

  
  @override
  FirebaseAuthenticationSettingsIos copyWith({
    String? deviceToken,
    bool? isAppSandbox,
  }) => FirebaseAuthenticationSettingsIos(
    deviceToken: deviceToken ?? this.deviceToken,
    isAppSandbox: isAppSandbox ?? this.isAppSandbox,
  );

  static const String objectType = 'firebaseAuthenticationSettingsIos';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
