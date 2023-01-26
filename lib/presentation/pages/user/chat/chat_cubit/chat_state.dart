import 'package:disco_app/data/network/network_models/chat_group.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatStateInitial;

  const factory ChatState.loading() = ChatStateLoading;

  const factory ChatState.loaded({required List<ChatGroup> groups}) = ChatStateLoaded;


  const factory ChatState.error() = ChatStateError;
}
