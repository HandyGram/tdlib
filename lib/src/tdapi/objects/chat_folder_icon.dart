part of '../tdapi.dart';

/// **ChatFolderIcon** *(chatFolderIcon)* - basic class
///
/// Represents an icon for a chat folder.
///
/// * [name]: The chosen icon name for short folder representation; one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette".
final class ChatFolderIcon extends TdObject {
  
  /// **ChatFolderIcon** *(chatFolderIcon)* - basic class
  ///
  /// Represents an icon for a chat folder.
  ///
  /// * [name]: The chosen icon name for short folder representation; one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette".
  const ChatFolderIcon({
    required this.name,
    this.extra,
    this.clientId,
  });
  
  /// The chosen icon name for short folder representation; one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",. "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like", "Money", "Note", "Palette"
  final String name;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatFolderIcon.fromJson(Map<String, dynamic> json) => ChatFolderIcon(
    name: json['name'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "name": name,
		};
	}

  
  ChatFolderIcon copyWith({
    String? name,
    dynamic extra,
    int? clientId,
  }) => ChatFolderIcon(
    name: name ?? this.name,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatFolderIcon';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
