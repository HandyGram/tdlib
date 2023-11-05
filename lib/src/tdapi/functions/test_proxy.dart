part of '../tdapi.dart';

/// **TestProxy** *(testProxy)* - TDLib function
///
/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization.
///
/// * [server]: Proxy server domain or IP address.
/// * [port]: Proxy server port.
/// * [type]: Proxy type.
/// * [dcId]: Identifier of a datacenter with which to test connection.
/// * [timeout]: The maximum overall timeout for the request.
///
/// [Ok] is returned on completion.
final class TestProxy extends TdFunction {
  
  /// **TestProxy** *(testProxy)* - TDLib function
  ///
  /// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization.
  ///
  /// * [server]: Proxy server domain or IP address.
  /// * [port]: Proxy server port.
  /// * [type]: Proxy type.
  /// * [dcId]: Identifier of a datacenter with which to test connection.
  /// * [timeout]: The maximum overall timeout for the request.
  ///
  /// [Ok] is returned on completion.
  const TestProxy({
    required this.server,
    required this.port,
    required this.type,
    required this.dcId,
    required this.timeout,
  });
  
  /// Proxy server domain or IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Proxy type
  final ProxyType type;

  /// Identifier of a datacenter with which to test connection
  final int dcId;

  /// The maximum overall timeout for the request
  final double timeout;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "server": server,
      "port": port,
      "type": type.toJson(),
      "dc_id": dcId,
      "timeout": timeout,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [server]: Proxy server domain or IP address
  /// * [port]: Proxy server port
  /// * [type]: Proxy type
  /// * [dc_id]: Identifier of a datacenter with which to test connection
  /// * [timeout]: The maximum overall timeout for the request
  TestProxy copyWith({
    String? server,
    int? port,
    ProxyType? type,
    int? dcId,
    double? timeout,
  }) => TestProxy(
    server: server ?? this.server,
    port: port ?? this.port,
    type: type ?? this.type,
    dcId: dcId ?? this.dcId,
    timeout: timeout ?? this.timeout,
  );

  /// TDLib object type
  static const String objectType = 'testProxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
