part of '../tdapi.dart';

class Sessions extends TdObject {
  /// Contains a list of sessions
  Sessions({this.sessions});

  /// [sessions] List of sessions
  List<Session> sessions;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Sessions.fromJson(Map<String, dynamic> json) {
    this.sessions = List<Session>.from((json['sessions'] ?? [])
        .map((item) => Session.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sessions": this.sessions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'sessions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
