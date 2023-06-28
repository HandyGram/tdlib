part of '../tdapi.dart';

/// **MessageViewers** *(messageViewers)* - basic class
///
/// Represents a list of message viewers.
///
/// * [viewers]: List of message viewers.
final class MessageViewers extends TdObject {
  
  /// **MessageViewers** *(messageViewers)* - basic class
  ///
  /// Represents a list of message viewers.
  ///
  /// * [viewers]: List of message viewers.
  const MessageViewers({
    required this.viewers,
    this.extra,
    this.clientId,
  });
  
  /// List of message viewers
  final List<MessageViewer> viewers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory MessageViewers.fromJson(Map<String, dynamic> json) => MessageViewers(
    viewers: List<MessageViewer>.from((json['viewers'] ?? []).map((item) => MessageViewer.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "viewers": viewers.map((i) => i.toJson()).toList(),
		};
	}

  
  MessageViewers copyWith({
    List<MessageViewer>? viewers,
    dynamic extra,
    int? clientId,
  }) => MessageViewers(
    viewers: viewers ?? this.viewers,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'messageViewers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
