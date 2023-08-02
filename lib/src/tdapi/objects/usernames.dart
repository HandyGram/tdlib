part of '../tdapi.dart';

/// **Usernames** *(usernames)* - basic class
///
/// Describes usernames assigned to a user, a supergroup, or a channel.
///
/// * [activeUsernames]: List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames.
/// * [disabledUsernames]: List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive.
/// * [editableUsername]: The active username, which can be changed with setUsername or setSupergroupUsername.
final class Usernames extends TdObject {
  
  /// **Usernames** *(usernames)* - basic class
  ///
  /// Describes usernames assigned to a user, a supergroup, or a channel.
  ///
  /// * [activeUsernames]: List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames.
  /// * [disabledUsernames]: List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive.
  /// * [editableUsername]: The active username, which can be changed with setUsername or setSupergroupUsername.
  const Usernames({
    required this.activeUsernames,
    required this.disabledUsernames,
    required this.editableUsername,
  });
  
  /// List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames
  final List<String> activeUsernames;

  /// List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive
  final List<String> disabledUsernames;

  /// The active username, which can be changed with setUsername or setSupergroupUsername
  final String editableUsername;
  
  /// Parse from a json
  factory Usernames.fromJson(Map<String, dynamic> json) => Usernames(
    activeUsernames: List<String>.from((json['active_usernames'] ?? []).map((item) => item).toList()),
    disabledUsernames: List<String>.from((json['disabled_usernames'] ?? []).map((item) => item).toList()),
    editableUsername: json['editable_username'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "active_usernames": activeUsernames.map((i) => i).toList(),
      "disabled_usernames": disabledUsernames.map((i) => i).toList(),
      "editable_username": editableUsername,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [active_usernames]: List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames
  /// * [disabled_usernames]: List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive
  /// * [editable_username]: The active username, which can be changed with setUsername or setSupergroupUsername
  Usernames copyWith({
    List<String>? activeUsernames,
    List<String>? disabledUsernames,
    String? editableUsername,
  }) => Usernames(
    activeUsernames: activeUsernames ?? this.activeUsernames,
    disabledUsernames: disabledUsernames ?? this.disabledUsernames,
    editableUsername: editableUsername ?? this.editableUsername,
  );

  /// TDLib object type
  static const String objectType = 'usernames';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
