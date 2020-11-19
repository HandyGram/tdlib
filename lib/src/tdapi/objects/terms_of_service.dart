part of '../tdapi.dart';

class TermsOfService extends TdObject {
  /// Contains Telegram terms of service
  TermsOfService({this.text, this.minUserAge, this.showPopup});

  /// [text] Text of the terms of service
  FormattedText text;

  /// [minUserAge] The minimum age of a user to be able to accept the terms; 0 if any
  int minUserAge;

  /// [showPopup] True, if a blocking popup with terms of service must be shown to the user
  bool showPopup;

  /// Parse from a json
  TermsOfService.fromJson(Map<String, dynamic> json) {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.minUserAge = json['min_user_age'];
    this.showPopup = json['show_popup'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "min_user_age": this.minUserAge,
      "show_popup": this.showPopup,
    };
  }

  static const CONSTRUCTOR = 'termsOfService';

  @override
  String getConstructor() => CONSTRUCTOR;
}
