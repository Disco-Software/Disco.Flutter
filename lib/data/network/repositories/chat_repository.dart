import 'package:disco_app/data/network/api/chat_api.dart';
import 'package:disco_app/data/network/network_models/chat_group.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatRepository {
  final ChatApi chatApi;

  ChatRepository({required this.chatApi});

  Future<List<ChatGroup>?> getChatGroups(int pageNumber, int pageSize) async {
    return chatApi.getChatGroups(pageNumber, pageSize).then((groups) {
      return groups?.map((e) => ChatGroup.fromJson(e)).toList();
    });
  }

  Future<void> createChatGroup(int userId) async {
    return await chatApi.createChatGroup(userId);
  }
}
