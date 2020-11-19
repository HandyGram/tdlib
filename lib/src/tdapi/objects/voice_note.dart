part of '../tdapi.dart';

class VoiceNote extends TdObject {
  /// Describes a voice note. The voice note must be encoded with the Opus codec, and stored inside an OGG container. Voice notes can have only a single audio channel
  VoiceNote({this.duration, this.waveform, this.mimeType, this.voice});

  /// [duration] Duration of the voice note, in seconds; as defined by the sender
  int duration;

  /// [waveform] A waveform representation of the voice note in 5-bit format
  String waveform;

  /// [mimeType] MIME type of the file; as defined by the sender
  String mimeType;

  /// [voice] File containing the voice note
  File voice;

  /// Parse from a json
  VoiceNote.fromJson(Map<String, dynamic> json) {
    this.duration = json['duration'];
    this.waveform = json['waveform'];
    this.mimeType = json['mime_type'];
    this.voice = File.fromJson(json['voice'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "duration": this.duration,
      "waveform": this.waveform,
      "mime_type": this.mimeType,
      "voice": this.voice == null ? null : this.voice.toJson(),
    };
  }

  static const CONSTRUCTOR = 'voiceNote';

  @override
  String getConstructor() => CONSTRUCTOR;
}
