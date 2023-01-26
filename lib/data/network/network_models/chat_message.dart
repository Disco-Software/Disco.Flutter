import 'dart:developer';

import 'package:disco_app/data/network/network_models/account_network.dart';
import 'package:disco_app/data/network/network_models/chat_group.dart';

import 'chat_group.dart';

class ChatMessage {
  int? accountId;
  Account? account;
  String? description;
  DateTime? createdDate;
  int? groupId;
  ChatGroup? group;

  ChatMessage({this.accountId,
    this.account,
    this.description,
    this.createdDate,
    this.groupId, this.group,});

  ChatMessage.fromJson(Map<String, dynamic> json) {
    try {
      account = json['account'] != null ? Account.fromJson(json['account']) : null;
      group = json['group'] != null ? ChatGroup.fromJson(json['group']) : null;
      accountId = json['accountId'];
      groupId = json['groupId'];
      createdDate = json['createdDate'];
      description = json['description'];
    } catch (err) {
      log("$err", name: 'Account parsing error');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountId'] = accountId;
    data['groupId'] = groupId;
    data['createdDate'] = createdDate;
    data['description'] = description;

    if (account != null) {
      data['account'] = account!.toJson();
    }
    if (group != null) {
      data['group'] = group!.toJson();
    }
    return data;
  }
}
