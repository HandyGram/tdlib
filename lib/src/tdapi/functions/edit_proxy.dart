part of '../tdapi.dart';

class EditProxy extends TdFunction {
  int proxyId;
  String server;
  int port;
  bool enable;
  ProxyType type;
  dynamic extra;

  /// Edits an existing proxy server for network requests. Can be called before authorization. 
  /// [proxyId] Proxy identifier . 
  /// [server] Proxy server IP address . 
  /// [port] Proxy server port . 
  /// [enable] True, if the proxy should be enabled . 
  /// [type] Proxy type
  EditProxy({this.proxyId,
    this.server,
    this.port,
    this.enable,
    this.type});

  /// Parse from a json
  EditProxy.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type == null ? null : this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}