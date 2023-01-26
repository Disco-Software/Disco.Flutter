// import 'dart:developer' as developer;
//
// import 'package:disco_app/data/network/network_models/like.dart';
// import 'package:disco_app/data/network/repositories/chat_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';
//
// import 'chat_state.dart';
//
// @injectable
// class ChatCubit extends Cubit<ChatState> {
//   ChatCubit({
//     required this.chatRepository,
//   }) : super(const ChatState.initial());
//
//   final ChatRepository chatRepository;
//
//   Future<void> init(List<Like>? likes) async {}
//
//   Future<void> loadGroups(int pageNumber, int pageSize) async {
//     try {
//       emit(const ChatState.loading());
//       final groups = await chatRepository.getChatGroups(pageNumber, pageSize);
//
//       if (groups != null) {
//         emit(ChatState.loaded(groups: groups));
//       }
//     } catch (err) {
//       emit(const ChatState.error());
//       developer.log('$err', name: 'Chat cubit error');
//     }
//   }
//
//   Future<void> createGroup(int userId) async {
//     try {
//       emit(const ChatState.loading());
//       await chatRepository.createChatGroup(userId);
//     } catch (err) {
//       emit(const ChatState.error());
//       developer.log('$err', name: 'Chat creation error');
//     }
//   }
// }
