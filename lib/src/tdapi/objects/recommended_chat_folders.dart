part of '../tdapi.dart';

/// **RecommendedChatFolders** *(recommendedChatFolders)* - basic class
///
/// Contains a list of recommended chat folders.
///
/// * [chatFolders]: List of recommended chat folders.
final class RecommendedChatFolders extends TdObject {
  
  /// **RecommendedChatFolders** *(recommendedChatFolders)* - basic class
  ///
  /// Contains a list of recommended chat folders.
  ///
  /// * [chatFolders]: List of recommended chat folders.
  const RecommendedChatFolders({
    required this.chatFolders,
    this.extra,
    this.clientId,
  });
  
  /// List of recommended chat folders
  final List<RecommendedChatFolder> chatFolders;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory RecommendedChatFolders.fromJson(Map<String, dynamic> json) => RecommendedChatFolders(
    chatFolders: List<RecommendedChatFolder>.from((json['chat_folders'] ?? []).map((item) => RecommendedChatFolder.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_folders": chatFolders.map((i) => i.toJson()).toList(),
		};
	}

  
  RecommendedChatFolders copyWith({
    List<RecommendedChatFolder>? chatFolders,
    dynamic extra,
    int? clientId,
  }) => RecommendedChatFolders(
    chatFolders: chatFolders ?? this.chatFolders,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'recommendedChatFolders';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
