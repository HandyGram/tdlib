part of '../tdapi.dart';

/// **BotInfo** *(botInfo)* - basic class
///
/// Contains information about a bot.
///
/// * [shortDescription]: The text that is shown on the bot's profile page and is sent together with the link when users share the bot.
/// * [description]: The text shown in the chat with the bot if the chat is empty.
/// * [photo]: Photo shown in the chat with the bot if the chat is empty; may be null *(optional)*.
/// * [animation]: Animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
/// * [menuButton]: Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown *(optional)*.
/// * [commands]: List of the bot commands.
/// * [privacyPolicyUrl]: The HTTP link to the privacy policy of the bot. If empty, then /privacy command must be used if supported by the bot. If the command isn't supported, then https://telegram.org/privacy-tpa must be opened.
/// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
/// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
/// * [hasMediaPreviews]: True, if the bot has media previews.
/// * [editCommandsLink]: The internal link, which can be used to edit bot commands; may be null *(optional)*.
/// * [editDescriptionLink]: The internal link, which can be used to edit bot description; may be null *(optional)*.
/// * [editDescriptionMediaLink]: The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
/// * [editSettingsLink]: The internal link, which can be used to edit bot settings; may be null *(optional)*.
final class BotInfo extends TdObject {
  /// **BotInfo** *(botInfo)* - basic class
  ///
  /// Contains information about a bot.
  ///
  /// * [shortDescription]: The text that is shown on the bot's profile page and is sent together with the link when users share the bot.
  /// * [description]: The text shown in the chat with the bot if the chat is empty.
  /// * [photo]: Photo shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [animation]: Animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [menuButton]: Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown *(optional)*.
  /// * [commands]: List of the bot commands.
  /// * [privacyPolicyUrl]: The HTTP link to the privacy policy of the bot. If empty, then /privacy command must be used if supported by the bot. If the command isn't supported, then https://telegram.org/privacy-tpa must be opened.
  /// * [defaultGroupAdministratorRights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null *(optional)*.
  /// * [defaultChannelAdministratorRights]: Default administrator rights for adding the bot to channels; may be null *(optional)*.
  /// * [hasMediaPreviews]: True, if the bot has media previews.
  /// * [editCommandsLink]: The internal link, which can be used to edit bot commands; may be null *(optional)*.
  /// * [editDescriptionLink]: The internal link, which can be used to edit bot description; may be null *(optional)*.
  /// * [editDescriptionMediaLink]: The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null *(optional)*.
  /// * [editSettingsLink]: The internal link, which can be used to edit bot settings; may be null *(optional)*.
  const BotInfo({
    required this.shortDescription,
    required this.description,
    this.photo,
    this.animation,
    this.menuButton,
    required this.commands,
    required this.privacyPolicyUrl,
    this.defaultGroupAdministratorRights,
    this.defaultChannelAdministratorRights,
    required this.hasMediaPreviews,
    this.editCommandsLink,
    this.editDescriptionLink,
    this.editDescriptionMediaLink,
    this.editSettingsLink,
  });

  /// The text that is shown on the bot's profile page and is sent together with the link when users share the bot
  final String shortDescription;

  /// The text shown in the chat with the bot if the chat is empty
  final String description;

  /// Photo shown in the chat with the bot if the chat is empty; may be null
  final Photo? photo;

  /// Animation shown in the chat with the bot if the chat is empty; may be null
  final Animation? animation;

  /// Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
  final BotMenuButton? menuButton;

  /// List of the bot commands
  final List<BotCommand> commands;

  /// The HTTP link to the privacy policy of the bot. If empty, then /privacy command must be used if supported by the bot. If the command isn't supported, then https://telegram.org/privacy-tpa must be opened
  final String privacyPolicyUrl;

  /// Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  /// Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  /// True, if the bot has media previews
  final bool hasMediaPreviews;

  /// The internal link, which can be used to edit bot commands; may be null
  final InternalLinkType? editCommandsLink;

  /// The internal link, which can be used to edit bot description; may be null
  final InternalLinkType? editDescriptionLink;

  /// The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null
  final InternalLinkType? editDescriptionMediaLink;

  /// The internal link, which can be used to edit bot settings; may be null
  final InternalLinkType? editSettingsLink;

  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
        shortDescription: json['short_description'],
        description: json['description'],
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        animation: json['animation'] == null
            ? null
            : Animation.fromJson(json['animation']),
        menuButton: json['menu_button'] == null
            ? null
            : BotMenuButton.fromJson(json['menu_button']),
        commands: List<BotCommand>.from((json['commands'] ?? [])
            .map((item) => BotCommand.fromJson(item))
            .toList()),
        privacyPolicyUrl: json['privacy_policy_url'],
        defaultGroupAdministratorRights:
            json['default_group_administrator_rights'] == null
                ? null
                : ChatAdministratorRights.fromJson(
                    json['default_group_administrator_rights']),
        defaultChannelAdministratorRights:
            json['default_channel_administrator_rights'] == null
                ? null
                : ChatAdministratorRights.fromJson(
                    json['default_channel_administrator_rights']),
        hasMediaPreviews: json['has_media_previews'],
        editCommandsLink: json['edit_commands_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_commands_link']),
        editDescriptionLink: json['edit_description_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_description_link']),
        editDescriptionMediaLink: json['edit_description_media_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_description_media_link']),
        editSettingsLink: json['edit_settings_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_settings_link']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "short_description": shortDescription,
      "description": description,
      "photo": photo?.toJson(),
      "animation": animation?.toJson(),
      "menu_button": menuButton?.toJson(),
      "commands": commands.map((i) => i.toJson()).toList(),
      "privacy_policy_url": privacyPolicyUrl,
      "default_group_administrator_rights":
          defaultGroupAdministratorRights?.toJson(),
      "default_channel_administrator_rights":
          defaultChannelAdministratorRights?.toJson(),
      "has_media_previews": hasMediaPreviews,
      "edit_commands_link": editCommandsLink?.toJson(),
      "edit_description_link": editDescriptionLink?.toJson(),
      "edit_description_media_link": editDescriptionMediaLink?.toJson(),
      "edit_settings_link": editSettingsLink?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [short_description]: The text that is shown on the bot's profile page and is sent together with the link when users share the bot
  /// * [description]: The text shown in the chat with the bot if the chat is empty
  /// * [photo]: Photo shown in the chat with the bot if the chat is empty; may be null
  /// * [animation]: Animation shown in the chat with the bot if the chat is empty; may be null
  /// * [menu_button]: Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
  /// * [commands]: List of the bot commands
  /// * [privacy_policy_url]: The HTTP link to the privacy policy of the bot. If empty, then /privacy command must be used if supported by the bot. If the command isn't supported, then https://telegram.org/privacy-tpa must be opened
  /// * [default_group_administrator_rights]: Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  /// * [default_channel_administrator_rights]: Default administrator rights for adding the bot to channels; may be null
  /// * [has_media_previews]: True, if the bot has media previews
  /// * [edit_commands_link]: The internal link, which can be used to edit bot commands; may be null
  /// * [edit_description_link]: The internal link, which can be used to edit bot description; may be null
  /// * [edit_description_media_link]: The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null
  /// * [edit_settings_link]: The internal link, which can be used to edit bot settings; may be null
  BotInfo copyWith({
    String? shortDescription,
    String? description,
    Photo? photo,
    Animation? animation,
    BotMenuButton? menuButton,
    List<BotCommand>? commands,
    String? privacyPolicyUrl,
    ChatAdministratorRights? defaultGroupAdministratorRights,
    ChatAdministratorRights? defaultChannelAdministratorRights,
    bool? hasMediaPreviews,
    InternalLinkType? editCommandsLink,
    InternalLinkType? editDescriptionLink,
    InternalLinkType? editDescriptionMediaLink,
    InternalLinkType? editSettingsLink,
  }) =>
      BotInfo(
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        animation: animation ?? this.animation,
        menuButton: menuButton ?? this.menuButton,
        commands: commands ?? this.commands,
        privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
        defaultGroupAdministratorRights: defaultGroupAdministratorRights ??
            this.defaultGroupAdministratorRights,
        defaultChannelAdministratorRights: defaultChannelAdministratorRights ??
            this.defaultChannelAdministratorRights,
        hasMediaPreviews: hasMediaPreviews ?? this.hasMediaPreviews,
        editCommandsLink: editCommandsLink ?? this.editCommandsLink,
        editDescriptionLink: editDescriptionLink ?? this.editDescriptionLink,
        editDescriptionMediaLink:
            editDescriptionMediaLink ?? this.editDescriptionMediaLink,
        editSettingsLink: editSettingsLink ?? this.editSettingsLink,
      );

  /// TDLib object type
  static const String defaultObjectId = 'botInfo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
