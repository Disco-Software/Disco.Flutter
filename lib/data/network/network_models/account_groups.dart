import 'dart:developer';

import 'package:disco_app/data/network/network_models/account_network.dart';
import 'package:disco_app/data/network/network_models/chat_group.dart';

class AccountGroups {
  int? accountId;
  Account? account;
  int? groupId;
  ChatGroup? group;

  AccountGroups({this.accountId,
    this.account,
    this.groupId,
    this.group,
  });

  AccountGroups.fromJson(Map<String, dynamic> json) {
    try {
      account = json['account'] != null ? Account.fromJson(json['account']) : null;
      group = json['group'] != null ? ChatGroup.fromJson(json['group']) : null;
      accountId = json['accountId'];
      groupId = json['groupId'];
    } catch (err) {
      log("$err", name: 'Account parsing error');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accountId'] = accountId;
    data['groupId'] = groupId;
    if (account != null) {
      data['account'] = account!.toJson();
    }
    if (group != null) {
      data['group'] = group!.toJson();
    }
    return data;
  }
}
