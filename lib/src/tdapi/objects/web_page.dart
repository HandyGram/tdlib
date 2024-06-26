part of '../tdapi.dart';

/// **WebPage** *(webPage)* - basic class
///
/// Describes a link preview.
///
/// * [url]: Original URL of the link.
/// * [displayUrl]: URL to display.
/// * [type]: Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else.
/// * [siteName]: Short name of the site (e.g., Google Docs, App Store).
/// * [title]: Title of the content.
/// * [description]: Description of the content.
/// * [photo]: Image representing the content; may be null *(optional)*.
/// * [embedUrl]: URL to show in the embedded preview.
/// * [embedType]: MIME type of the embedded preview, (e.g., text/html or video/mp4).
/// * [embedWidth]: Width of the embedded preview.
/// * [embedHeight]: Height of the embedded preview.
/// * [duration]: Duration of the content, in seconds.
/// * [author]: Author of the content.
/// * [hasLargeMedia]: True, if size of media in the preview can be changed.
/// * [showLargeMedia]: True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos.
/// * [skipConfirmation]: True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear.
/// * [showAboveText]: True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text.
/// * [animation]: Preview of the content as an animation, if available; may be null *(optional)*.
/// * [audio]: Preview of the content as an audio file, if available; may be null *(optional)*.
/// * [document]: Preview of the content as a document, if available; may be null *(optional)*.
/// * [sticker]: Preview of the content as a sticker for small WEBP files, if available; may be null *(optional)*.
/// * [video]: Preview of the content as a video, if available; may be null *(optional)*.
/// * [videoNote]: Preview of the content as a video note, if available; may be null *(optional)*.
/// * [voiceNote]: Preview of the content as a voice note, if available; may be null *(optional)*.
/// * [storySenderChatId]: The identifier of the sender of the previewed story; 0 if none.
/// * [storyId]: The identifier of the previewed story; 0 if none.
/// * [stickers]: Up to 4 stickers from the sticker set available via the link.
/// * [instantViewVersion]: Version of web page instant view (currently, can be 1 or 2); 0 if none.
final class WebPage extends TdObject {
  /// **WebPage** *(webPage)* - basic class
  ///
  /// Describes a link preview.
  ///
  /// * [url]: Original URL of the link.
  /// * [displayUrl]: URL to display.
  /// * [type]: Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else.
  /// * [siteName]: Short name of the site (e.g., Google Docs, App Store).
  /// * [title]: Title of the content.
  /// * [description]: Description of the content.
  /// * [photo]: Image representing the content; may be null *(optional)*.
  /// * [embedUrl]: URL to show in the embedded preview.
  /// * [embedType]: MIME type of the embedded preview, (e.g., text/html or video/mp4).
  /// * [embedWidth]: Width of the embedded preview.
  /// * [embedHeight]: Height of the embedded preview.
  /// * [duration]: Duration of the content, in seconds.
  /// * [author]: Author of the content.
  /// * [hasLargeMedia]: True, if size of media in the preview can be changed.
  /// * [showLargeMedia]: True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos.
  /// * [skipConfirmation]: True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear.
  /// * [showAboveText]: True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text.
  /// * [animation]: Preview of the content as an animation, if available; may be null *(optional)*.
  /// * [audio]: Preview of the content as an audio file, if available; may be null *(optional)*.
  /// * [document]: Preview of the content as a document, if available; may be null *(optional)*.
  /// * [sticker]: Preview of the content as a sticker for small WEBP files, if available; may be null *(optional)*.
  /// * [video]: Preview of the content as a video, if available; may be null *(optional)*.
  /// * [videoNote]: Preview of the content as a video note, if available; may be null *(optional)*.
  /// * [voiceNote]: Preview of the content as a voice note, if available; may be null *(optional)*.
  /// * [storySenderChatId]: The identifier of the sender of the previewed story; 0 if none.
  /// * [storyId]: The identifier of the previewed story; 0 if none.
  /// * [stickers]: Up to 4 stickers from the sticker set available via the link.
  /// * [instantViewVersion]: Version of web page instant view (currently, can be 1 or 2); 0 if none.
  const WebPage({
    required this.url,
    required this.displayUrl,
    required this.type,
    required this.siteName,
    required this.title,
    required this.description,
    this.photo,
    required this.embedUrl,
    required this.embedType,
    required this.embedWidth,
    required this.embedHeight,
    required this.duration,
    required this.author,
    required this.hasLargeMedia,
    required this.showLargeMedia,
    required this.skipConfirmation,
    required this.showAboveText,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    required this.storySenderChatId,
    required this.storyId,
    required this.stickers,
    required this.instantViewVersion,
    this.extra,
    this.clientId,
  });

  /// Original URL of the link
  final String url;

  /// URL to display
  final String displayUrl;

  /// Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  final String type;

  /// Short name of the site (e.g., Google Docs, App Store)
  final String siteName;

  /// Title of the content
  final String title;

  /// Description of the content
  final FormattedText description;

  /// Image representing the content; may be null
  final Photo? photo;

  /// URL to show in the embedded preview
  final String embedUrl;

  /// MIME type of the embedded preview, (e.g., text/html or video/mp4)
  final String embedType;

  /// Width of the embedded preview
  final int embedWidth;

  /// Height of the embedded preview
  final int embedHeight;

  /// Duration of the content, in seconds
  final int duration;

  /// Author of the content
  final String author;

  /// True, if size of media in the preview can be changed
  final bool hasLargeMedia;

  /// True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos
  final bool showLargeMedia;

  /// True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear
  final bool skipConfirmation;

  /// True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text
  final bool showAboveText;

  /// Preview of the content as an animation, if available; may be null
  final Animation? animation;

  /// Preview of the content as an audio file, if available; may be null
  final Audio? audio;

  /// Preview of the content as a document, if available; may be null
  final Document? document;

  /// Preview of the content as a sticker for small WEBP files, if available; may be null
  final Sticker? sticker;

  /// Preview of the content as a video, if available; may be null
  final Video? video;

  /// Preview of the content as a video note, if available; may be null
  final VideoNote? videoNote;

  /// Preview of the content as a voice note, if available; may be null
  final VoiceNote? voiceNote;

  /// The identifier of the sender of the previewed story; 0 if none
  final int storySenderChatId;

  /// The identifier of the previewed story; 0 if none
  final int storyId;

  /// Up to 4 stickers from the sticker set available via the link
  final List<Sticker> stickers;

  /// Version of web page instant view (currently, can be 1 or 2); 0 if none
  final int instantViewVersion;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory WebPage.fromJson(Map<String, dynamic> json) => WebPage(
        url: json['url'],
        displayUrl: json['display_url'],
        type: json['type'],
        siteName: json['site_name'],
        title: json['title'],
        description: FormattedText.fromJson(json['description']),
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        embedUrl: json['embed_url'],
        embedType: json['embed_type'],
        embedWidth: json['embed_width'],
        embedHeight: json['embed_height'],
        duration: json['duration'],
        author: json['author'],
        hasLargeMedia: json['has_large_media'],
        showLargeMedia: json['show_large_media'],
        skipConfirmation: json['skip_confirmation'],
        showAboveText: json['show_above_text'],
        animation: json['animation'] == null
            ? null
            : Animation.fromJson(json['animation']),
        audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
        document: json['document'] == null
            ? null
            : Document.fromJson(json['document']),
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
        video: json['video'] == null ? null : Video.fromJson(json['video']),
        videoNote: json['video_note'] == null
            ? null
            : VideoNote.fromJson(json['video_note']),
        voiceNote: json['voice_note'] == null
            ? null
            : VoiceNote.fromJson(json['voice_note']),
        storySenderChatId: json['story_sender_chat_id'] ?? 0,
        storyId: json['story_id'] ?? 0,
        stickers: List<Sticker>.from((json['stickers'] ?? [])
            .map((item) => Sticker.fromJson(item))
            .toList()),
        instantViewVersion: json['instant_view_version'] ?? 0,
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "url": url,
      "display_url": displayUrl,
      "type": type,
      "site_name": siteName,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
      "embed_url": embedUrl,
      "embed_type": embedType,
      "embed_width": embedWidth,
      "embed_height": embedHeight,
      "duration": duration,
      "author": author,
      "has_large_media": hasLargeMedia,
      "show_large_media": showLargeMedia,
      "skip_confirmation": skipConfirmation,
      "show_above_text": showAboveText,
      "animation": animation?.toJson(),
      "audio": audio?.toJson(),
      "document": document?.toJson(),
      "sticker": sticker?.toJson(),
      "video": video?.toJson(),
      "video_note": videoNote?.toJson(),
      "voice_note": voiceNote?.toJson(),
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "stickers": stickers.map((i) => i.toJson()).toList(),
      "instant_view_version": instantViewVersion,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: Original URL of the link
  /// * [display_url]: URL to display
  /// * [type]: Type of the web page. Can be: article, photo, audio, video, document, profile, app, or something else
  /// * [site_name]: Short name of the site (e.g., Google Docs, App Store)
  /// * [title]: Title of the content
  /// * [description]: Description of the content
  /// * [photo]: Image representing the content; may be null
  /// * [embed_url]: URL to show in the embedded preview
  /// * [embed_type]: MIME type of the embedded preview, (e.g., text/html or video/mp4)
  /// * [embed_width]: Width of the embedded preview
  /// * [embed_height]: Height of the embedded preview
  /// * [duration]: Duration of the content, in seconds
  /// * [author]: Author of the content
  /// * [has_large_media]: True, if size of media in the preview can be changed
  /// * [show_large_media]: True, if large media preview must be shown; otherwise, the media preview must be shown small and only the first frame must be shown for videos
  /// * [skip_confirmation]: True, if there is no need to show an ordinary open URL confirmation, when opening the URL from the preview, because the URL is shown in the message text in clear
  /// * [show_above_text]: True, if the link preview must be shown above message text; otherwise, the link preview must be shown below the message text
  /// * [animation]: Preview of the content as an animation, if available; may be null
  /// * [audio]: Preview of the content as an audio file, if available; may be null
  /// * [document]: Preview of the content as a document, if available; may be null
  /// * [sticker]: Preview of the content as a sticker for small WEBP files, if available; may be null
  /// * [video]: Preview of the content as a video, if available; may be null
  /// * [video_note]: Preview of the content as a video note, if available; may be null
  /// * [voice_note]: Preview of the content as a voice note, if available; may be null
  /// * [story_sender_chat_id]: The identifier of the sender of the previewed story; 0 if none
  /// * [story_id]: The identifier of the previewed story; 0 if none
  /// * [stickers]: Up to 4 stickers from the sticker set available via the link
  /// * [instant_view_version]: Version of web page instant view (currently, can be 1 or 2); 0 if none
  WebPage copyWith({
    String? url,
    String? displayUrl,
    String? type,
    String? siteName,
    String? title,
    FormattedText? description,
    Photo? photo,
    String? embedUrl,
    String? embedType,
    int? embedWidth,
    int? embedHeight,
    int? duration,
    String? author,
    bool? hasLargeMedia,
    bool? showLargeMedia,
    bool? skipConfirmation,
    bool? showAboveText,
    Animation? animation,
    Audio? audio,
    Document? document,
    Sticker? sticker,
    Video? video,
    VideoNote? videoNote,
    VoiceNote? voiceNote,
    int? storySenderChatId,
    int? storyId,
    List<Sticker>? stickers,
    int? instantViewVersion,
    dynamic extra,
    int? clientId,
  }) =>
      WebPage(
        url: url ?? this.url,
        displayUrl: displayUrl ?? this.displayUrl,
        type: type ?? this.type,
        siteName: siteName ?? this.siteName,
        title: title ?? this.title,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        embedUrl: embedUrl ?? this.embedUrl,
        embedType: embedType ?? this.embedType,
        embedWidth: embedWidth ?? this.embedWidth,
        embedHeight: embedHeight ?? this.embedHeight,
        duration: duration ?? this.duration,
        author: author ?? this.author,
        hasLargeMedia: hasLargeMedia ?? this.hasLargeMedia,
        showLargeMedia: showLargeMedia ?? this.showLargeMedia,
        skipConfirmation: skipConfirmation ?? this.skipConfirmation,
        showAboveText: showAboveText ?? this.showAboveText,
        animation: animation ?? this.animation,
        audio: audio ?? this.audio,
        document: document ?? this.document,
        sticker: sticker ?? this.sticker,
        video: video ?? this.video,
        videoNote: videoNote ?? this.videoNote,
        voiceNote: voiceNote ?? this.voiceNote,
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        stickers: stickers ?? this.stickers,
        instantViewVersion: instantViewVersion ?? this.instantViewVersion,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'webPage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
