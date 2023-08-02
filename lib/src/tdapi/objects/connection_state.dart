part of '../tdapi.dart';

/// **ConnectionState** *(connectionState)* - parent
///
/// Describes the current state of the connection to Telegram servers.
sealed class ConnectionState extends TdObject {
  
  /// **ConnectionState** *(connectionState)* - parent
  ///
  /// Describes the current state of the connection to Telegram servers.
  const ConnectionState();
  
  /// a ConnectionState return type can be :
  /// * [ConnectionStateWaitingForNetwork]
  /// * [ConnectionStateConnectingToProxy]
  /// * [ConnectionStateConnecting]
  /// * [ConnectionStateUpdating]
  /// * [ConnectionStateReady]
  factory ConnectionState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ConnectionStateWaitingForNetwork.objectType:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.objectType:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.objectType:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.objectType:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.objectType:
        return ConnectionStateReady.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ConnectionState)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ConnectionState copyWith();

  /// TDLib object type
  static const String objectType = 'connectionState';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ConnectionStateWaitingForNetwork** *(connectionStateWaitingForNetwork)* - child of ConnectionState
///
/// Currently waiting for the network to become available. Use setNetworkType to change the available network type.
final class ConnectionStateWaitingForNetwork extends ConnectionState {
  
  /// **ConnectionStateWaitingForNetwork** *(connectionStateWaitingForNetwork)* - child of ConnectionState
  ///
  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type.
  const ConnectionStateWaitingForNetwork();
  
  /// Parse from a json
  factory ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json) => const ConnectionStateWaitingForNetwork();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ConnectionStateWaitingForNetwork copyWith() => const ConnectionStateWaitingForNetwork();

  /// TDLib object type
  static const String objectType = 'connectionStateWaitingForNetwork';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ConnectionStateConnectingToProxy** *(connectionStateConnectingToProxy)* - child of ConnectionState
///
/// Currently establishing a connection with a proxy server.
final class ConnectionStateConnectingToProxy extends ConnectionState {
  
  /// **ConnectionStateConnectingToProxy** *(connectionStateConnectingToProxy)* - child of ConnectionState
  ///
  /// Currently establishing a connection with a proxy server.
  const ConnectionStateConnectingToProxy();
  
  /// Parse from a json
  factory ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json) => const ConnectionStateConnectingToProxy();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ConnectionStateConnectingToProxy copyWith() => const ConnectionStateConnectingToProxy();

  /// TDLib object type
  static const String objectType = 'connectionStateConnectingToProxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ConnectionStateConnecting** *(connectionStateConnecting)* - child of ConnectionState
///
/// Currently establishing a connection to the Telegram servers.
final class ConnectionStateConnecting extends ConnectionState {
  
  /// **ConnectionStateConnecting** *(connectionStateConnecting)* - child of ConnectionState
  ///
  /// Currently establishing a connection to the Telegram servers.
  const ConnectionStateConnecting();
  
  /// Parse from a json
  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) => const ConnectionStateConnecting();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ConnectionStateConnecting copyWith() => const ConnectionStateConnecting();

  /// TDLib object type
  static const String objectType = 'connectionStateConnecting';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ConnectionStateUpdating** *(connectionStateUpdating)* - child of ConnectionState
///
/// Downloading data received while the application was offline.
final class ConnectionStateUpdating extends ConnectionState {
  
  /// **ConnectionStateUpdating** *(connectionStateUpdating)* - child of ConnectionState
  ///
  /// Downloading data received while the application was offline.
  const ConnectionStateUpdating();
  
  /// Parse from a json
  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) => const ConnectionStateUpdating();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ConnectionStateUpdating copyWith() => const ConnectionStateUpdating();

  /// TDLib object type
  static const String objectType = 'connectionStateUpdating';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ConnectionStateReady** *(connectionStateReady)* - child of ConnectionState
///
/// There is a working connection to the Telegram servers.
final class ConnectionStateReady extends ConnectionState {
  
  /// **ConnectionStateReady** *(connectionStateReady)* - child of ConnectionState
  ///
  /// There is a working connection to the Telegram servers.
  const ConnectionStateReady();
  
  /// Parse from a json
  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) => const ConnectionStateReady();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ConnectionStateReady copyWith() => const ConnectionStateReady();

  /// TDLib object type
  static const String objectType = 'connectionStateReady';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
