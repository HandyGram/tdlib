part of '../tdapi.dart';

/// **GetChatRevenueWithdrawalUrl** *(getChatRevenueWithdrawalUrl)* - TDLib function
///
/// Returns URL for chat revenue withdrawal; requires owner privileges in the chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true and getOption("can_withdraw_chat_revenue").
///
/// * [chatId]: Chat identifier.
/// * [password]: The 2-step verification password of the current user.
///
/// [HttpUrl] is returned on completion.
final class GetChatRevenueWithdrawalUrl extends TdFunction {
  /// **GetChatRevenueWithdrawalUrl** *(getChatRevenueWithdrawalUrl)* - TDLib function
  ///
  /// Returns URL for chat revenue withdrawal; requires owner privileges in the chat. Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true and getOption("can_withdraw_chat_revenue").
  ///
  /// * [chatId]: Chat identifier.
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [HttpUrl] is returned on completion.
  const GetChatRevenueWithdrawalUrl({
    required this.chatId,
    required this.password,
  });

  /// Chat identifier
  final int chatId;

  /// The 2-step verification password of the current user
  final String password;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "password": password,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Chat identifier
  /// * [password]: The 2-step verification password of the current user
  GetChatRevenueWithdrawalUrl copyWith({
    int? chatId,
    String? password,
  }) =>
      GetChatRevenueWithdrawalUrl(
        chatId: chatId ?? this.chatId,
        password: password ?? this.password,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getChatRevenueWithdrawalUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
