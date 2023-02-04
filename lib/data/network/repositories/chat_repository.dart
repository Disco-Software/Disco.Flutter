import 'dart:developer';

import 'package:disco_app/data/network/api/chat_api.dart';
import 'package:disco_app/data/network/network_models/chat_group.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatRepository {
  final ChatApi chatApi;

  ChatRepository({required this.chatApi});

  Future<List<ChatGroup>?> fetchChatGroups(int pageNumber, int pageSize) async => await chatApi
          .getChatGroups(pageNumber, pageSize)
          .then((groups) => groups?.map((e) => ChatGroup.fromJson(e)).toList())
          .catchError((err) {
        log(' $err', name: 'FetchGroupsError');
      });

  Future<void> createChatGroup(int userId) async {
    return await chatApi.createChatGroup(userId);
  }
}
