part of '../tdapi.dart';

class InputInlineQueryResult extends TdObject {
  /// Represents a single result of an inline query; for bots only
  InputInlineQueryResult();

  /// a InputInlineQueryResult return type can be :
  /// * InputInlineQueryResultAnimation
  /// * InputInlineQueryResultArticle
  /// * InputInlineQueryResultAudio
  /// * InputInlineQueryResultContact
  /// * InputInlineQueryResultDocument
  /// * InputInlineQueryResultGame
  /// * InputInlineQueryResultLocation
  /// * InputInlineQueryResultPhoto
  /// * InputInlineQueryResultSticker
  /// * InputInlineQueryResultVenue
  /// * InputInlineQueryResultVideo
  /// * InputInlineQueryResultVoiceNote
  factory InputInlineQueryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputInlineQueryResultAnimation.CONSTRUCTOR:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.CONSTRUCTOR:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.CONSTRUCTOR:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.CONSTRUCTOR:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.CONSTRUCTOR:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.CONSTRUCTOR:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.CONSTRUCTOR:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.CONSTRUCTOR:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.CONSTRUCTOR:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.CONSTRUCTOR:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.CONSTRUCTOR:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.CONSTRUCTOR:
        return InputInlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputInlineQueryResult';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  /// Represents a link to an animated GIF or an animated (i.e. without sound) H.264/MPEG-4 AVC video
  InputInlineQueryResultAnimation(
      {this.id,
      this.title,
      this.thumbnailUrl,
      this.thumbnailMimeType,
      this.videoUrl,
      this.videoMimeType,
      this.videoDuration,
      this.videoWidth,
      this.videoHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the query result
  String title;

  /// [thumbnailUrl] URL of the result thumbnail (JPEG, GIF, or MPEG4), if it exists
  String thumbnailUrl;

  /// [thumbnailMimeType] MIME type of the video thumbnail. If non-empty, must be one of "image/jpeg", "image/gif" and "video/mp4"
  String thumbnailMimeType;

  /// [videoUrl] The URL of the video file (file size must not exceed 1MB)
  String videoUrl;

  /// [videoMimeType] MIME type of the video file. Must be one of "image/gif" and "video/mp4"
  String videoMimeType;

  /// [videoDuration] Duration of the video, in seconds
  int videoDuration;

  /// [videoWidth] Width of the video
  int videoWidth;

  /// [videoHeight] Height of the video
  int videoHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAnimation, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailMimeType = json['thumbnail_mime_type'];
    this.videoUrl = json['video_url'];
    this.videoMimeType = json['video_mime_type'];
    this.videoDuration = json['video_duration'];
    this.videoWidth = json['video_width'];
    this.videoHeight = json['video_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_mime_type": this.thumbnailMimeType,
      "video_url": this.videoUrl,
      "video_mime_type": this.videoMimeType,
      "video_duration": this.videoDuration,
      "video_width": this.videoWidth,
      "video_height": this.videoHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultArticle extends InputInlineQueryResult {
  /// Represents a link to an article or web page
  InputInlineQueryResultArticle(
      {this.id,
      this.url,
      this.hideUrl,
      this.title,
      this.description,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [url] URL of the result, if it exists
  String url;

  /// [hideUrl] True, if the URL must be not shown
  bool hideUrl;

  /// [title] Title of the result
  String title;

  /// [description] A short description of the result
  String description;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  int thumbnailHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.url = json['url'];
    this.hideUrl = json['hide_url'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "url": this.url,
      "hide_url": this.hideUrl,
      "title": this.title,
      "description": this.description,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultAudio extends InputInlineQueryResult {
  /// Represents a link to an MP3 audio file
  InputInlineQueryResultAudio(
      {this.id,
      this.title,
      this.performer,
      this.audioUrl,
      this.audioDuration,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the audio file
  String title;

  /// [performer] Performer of the audio file
  String performer;

  /// [audioUrl] The URL of the audio file
  String audioUrl;

  /// [audioDuration] Audio file duration, in seconds
  int audioDuration;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageAudio, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.audioUrl = json['audio_url'];
    this.audioDuration = json['audio_duration'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "performer": this.performer,
      "audio_url": this.audioUrl,
      "audio_duration": this.audioDuration,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultAudio';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultContact extends InputInlineQueryResult {
  /// Represents a user contact
  InputInlineQueryResultContact(
      {this.id,
      this.contact,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [contact] User contact
  Contact contact;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  int thumbnailHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "contact": this.contact == null ? null : this.contact.toJson(),
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultDocument extends InputInlineQueryResult {
  /// Represents a link to a file
  InputInlineQueryResultDocument(
      {this.id,
      this.title,
      this.description,
      this.documentUrl,
      this.mimeType,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the resulting file
  String title;

  /// [description] Short description of the result, if known
  String description;

  /// [documentUrl] URL of the file
  String documentUrl;

  /// [mimeType] MIME type of the file content; only "application/pdf" and "application/zip" are currently allowed
  String mimeType;

  /// [thumbnailUrl] The URL of the file thumbnail, if it exists
  String thumbnailUrl;

  /// [thumbnailWidth] Width of the thumbnail
  int thumbnailWidth;

  /// [thumbnailHeight] Height of the thumbnail
  int thumbnailHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageDocument, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.documentUrl = json['document_url'];
    this.mimeType = json['mime_type'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "document_url": this.documentUrl,
      "mime_type": this.mimeType,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultDocument';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultGame extends InputInlineQueryResult {
  /// Represents a game
  InputInlineQueryResultGame({this.id, this.gameShortName, this.replyMarkup});

  /// [id] Unique identifier of the query result
  String id;

  /// [gameShortName] Short name of the game
  String gameShortName;

  /// [replyMarkup] Message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// Parse from a json
  InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.gameShortName = json['game_short_name'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "game_short_name": this.gameShortName,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultLocation extends InputInlineQueryResult {
  /// Represents a point on the map
  InputInlineQueryResultLocation(
      {this.id,
      this.location,
      this.livePeriod,
      this.title,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [location] Location result
  Location location;

  /// [livePeriod] Amount of time relative to the message sent time until the location can be updated, in seconds
  int livePeriod;

  /// [title] Title of the result
  String title;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  int thumbnailHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
    this.title = json['title'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "location": this.location == null ? null : this.location.toJson(),
      "live_period": this.livePeriod,
      "title": this.title,
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  /// Represents link to a JPEG image
  InputInlineQueryResultPhoto(
      {this.id,
      this.title,
      this.description,
      this.thumbnailUrl,
      this.photoUrl,
      this.photoWidth,
      this.photoHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the result, if known
  String title;

  /// [description] A short description of the result, if known
  String description;

  /// [thumbnailUrl] URL of the photo thumbnail, if it exists
  String thumbnailUrl;

  /// [photoUrl] The URL of the JPEG photo (photo size must not exceed 5MB)
  String photoUrl;

  /// [photoWidth] Width of the photo
  int photoWidth;

  /// [photoHeight] Height of the photo
  int photoHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessagePhoto, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.photoUrl = json['photo_url'];
    this.photoWidth = json['photo_width'];
    this.photoHeight = json['photo_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "thumbnail_url": this.thumbnailUrl,
      "photo_url": this.photoUrl,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultSticker extends InputInlineQueryResult {
  /// Represents a link to a WEBP or TGS sticker
  InputInlineQueryResultSticker(
      {this.id,
      this.thumbnailUrl,
      this.stickerUrl,
      this.stickerWidth,
      this.stickerHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [thumbnailUrl] URL of the sticker thumbnail, if it exists
  String thumbnailUrl;

  /// [stickerUrl] The URL of the WEBP or TGS sticker (sticker file size must not exceed 5MB)
  String stickerUrl;

  /// [stickerWidth] Width of the sticker
  int stickerWidth;

  /// [stickerHeight] Height of the sticker
  int stickerHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, inputMessageSticker, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.stickerUrl = json['sticker_url'];
    this.stickerWidth = json['sticker_width'];
    this.stickerHeight = json['sticker_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "thumbnail_url": this.thumbnailUrl,
      "sticker_url": this.stickerUrl,
      "sticker_width": this.stickerWidth,
      "sticker_height": this.stickerHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVenue extends InputInlineQueryResult {
  /// Represents information about a venue
  InputInlineQueryResultVenue(
      {this.id,
      this.venue,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.thumbnailHeight,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [venue] Venue result
  Venue venue;

  /// [thumbnailUrl] URL of the result thumbnail, if it exists
  String thumbnailUrl;

  /// [thumbnailWidth] Thumbnail width, if known
  int thumbnailWidth;

  /// [thumbnailHeight] Thumbnail height, if known
  int thumbnailHeight;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
    this.thumbnailUrl = json['thumbnail_url'];
    this.thumbnailWidth = json['thumbnail_width'];
    this.thumbnailHeight = json['thumbnail_height'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "venue": this.venue == null ? null : this.venue.toJson(),
      "thumbnail_url": this.thumbnailUrl,
      "thumbnail_width": this.thumbnailWidth,
      "thumbnail_height": this.thumbnailHeight,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVenue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVideo extends InputInlineQueryResult {
  /// Represents a link to a page containing an embedded video player or a video file
  InputInlineQueryResultVideo(
      {this.id,
      this.title,
      this.description,
      this.thumbnailUrl,
      this.videoUrl,
      this.mimeType,
      this.videoWidth,
      this.videoHeight,
      this.videoDuration,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the result
  String title;

  /// [description] A short description of the result, if known
  String description;

  /// [thumbnailUrl] The URL of the video thumbnail (JPEG), if it exists
  String thumbnailUrl;

  /// [videoUrl] URL of the embedded video player or video file
  String videoUrl;

  /// [mimeType] MIME type of the content of the video URL, only "text/html" or "video/mp4" are currently supported
  String mimeType;

  /// [videoWidth] Width of the video
  int videoWidth;

  /// [videoHeight] Height of the video
  int videoHeight;

  /// [videoDuration] Video duration, in seconds
  int videoDuration;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVideo, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnailUrl = json['thumbnail_url'];
    this.videoUrl = json['video_url'];
    this.mimeType = json['mime_type'];
    this.videoWidth = json['video_width'];
    this.videoHeight = json['video_height'];
    this.videoDuration = json['video_duration'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "description": this.description,
      "thumbnail_url": this.thumbnailUrl,
      "video_url": this.videoUrl,
      "mime_type": this.mimeType,
      "video_width": this.videoWidth,
      "video_height": this.videoHeight,
      "video_duration": this.videoDuration,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  /// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
  InputInlineQueryResultVoiceNote(
      {this.id,
      this.title,
      this.voiceNoteUrl,
      this.voiceNoteDuration,
      this.replyMarkup,
      this.inputMessageContent});

  /// [id] Unique identifier of the query result
  String id;

  /// [title] Title of the voice note
  String title;

  /// [voiceNoteUrl] The URL of the voice note file
  String voiceNoteUrl;

  /// [voiceNoteDuration] Duration of the voice note, in seconds
  int voiceNoteDuration;

  /// [replyMarkup] The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation, InputMessageVenue or InputMessageContact
  InputMessageContent inputMessageContent;

  /// Parse from a json
  InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.title = json['title'];
    this.voiceNoteUrl = json['voice_note_url'];
    this.voiceNoteDuration = json['voice_note_duration'];
    this.replyMarkup =
        ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{});
    this.inputMessageContent = InputMessageContent.fromJson(
        json['input_message_content'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
      "voice_note_url": this.voiceNoteUrl,
      "voice_note_duration": this.voiceNoteDuration,
      "reply_markup":
          this.replyMarkup == null ? null : this.replyMarkup.toJson(),
      "input_message_content": this.inputMessageContent == null
          ? null
          : this.inputMessageContent.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputInlineQueryResultVoiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
