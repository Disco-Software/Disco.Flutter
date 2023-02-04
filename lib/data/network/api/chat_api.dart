import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChatApi {
  final Dio client;

  ChatApi({required this.client});

  Future<List<dynamic>?> getChatGroups(int pageNumber, int pageSize)  => client.get("user/groups",
          queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize}).then((response) {
        return response.data;
      });

  Future<dynamic> createChatGroup(int userId)  =>
      client.post("user/groups/create", data: {'userId': userId}).then((response) {
        return response.data;
      });
}
