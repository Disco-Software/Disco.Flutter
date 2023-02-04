import 'dart:developer';

import 'package:disco_app/data/network/network_models/account_groups.dart';
import 'package:disco_app/data/network/network_models/account_network.dart';
import 'package:disco_app/data/network/network_models/chat_message.dart';

class ChatGroup {
  String? name;
  List<Account>? accounts;
  List<ChatMessage>? messages;
  List<AccountGroups>? accountGroups;

  ChatGroup({
    this.name,
    this.accounts,
    this.messages,
    this.accountGroups,
  });

  ChatGroup.fromJson(Map<String, dynamic> json) {

    try {
      name = json['name'];
      if (json['accounts'] != null) {
        accounts = <Account>[];
        json['accounts'].forEach((v) {
          accounts!.add(Account.fromJson(v));
        });
      }
      if (json['messages'] != null) {
        messages = <ChatMessage>[];
        json['messages'].forEach((v) {
          messages!.add(ChatMessage.fromJson(v));
        });
      }
      if (json['accountGroups'] != null) {
        accountGroups = <AccountGroups>[];
        json['accountGroups'].forEach((v) {
          accountGroups!.add(AccountGroups.fromJson(v));
        });
      }

    } catch (err) {
      log("$err", name: 'Account parsing error');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (accounts != null) {
      data['accounts'] = accounts!.map((v) => v.toJson()).toList();
    }
    if (messages != null) {
      data['messages'] = messages!.map((v) => v.toJson()).toList();
    }
    if (accountGroups != null) {
      data['accountGroups'] = accountGroups!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'ChatGroup{name: $name, accounts: $accounts, messages: $messages, accountGroups: $accountGroups}';
  }
}
