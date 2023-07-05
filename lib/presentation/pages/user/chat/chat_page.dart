import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:disco_app/data/network/network_models/chat_group.dart';
import 'package:disco_app/injection.dart';
import 'package:disco_app/presentation/common_widgets/unicorn_image.dart';
import 'package:disco_app/presentation/pages/user/chat/chat_cubit/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signalr_pure/signalr_pure.dart';

import '../../../../res/colors.dart';
import 'chat_cubit/chat_cubit.dart';

@RoutePage()
class ChatPage extends StatefulWidget implements AutoRouteWrapper {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();

  @override
  Widget wrappedRoute(context) {
    return BlocProvider<ChatCubit>(
      create: (context) => getIt()..loadGroups(1, 1),
      child: this,
    );
  }
}

class _ChatPageState extends State<ChatPage> {
  final serverUrl = '' + "/Chat";
  var chatMessages = [];
  var connectionIsOpen = false;
  var userName = "Fred";
  late HubConnection connection;
  final _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsIm5iZiI6MTY3NDkwMzY4NywiZXhwIjoxNjc0OTc1Njg3LCJpc3MiOiJkaXNjby1hcGkiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0L0Rpc2NvLkFwaSJ9.mfddx5P5cFue3HOlSnPHrsuIUzM1OkmEuvlePXjDNNA';

  @override
  Future<void> didChangeDependencies() async {
    // context.read<ChatCubit>().loadGroups(1, 1);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C142E),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: const Color(0xFF1C142D),
          centerTitle: false,
          title: const Text(
            "Chat",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
                padding: const EdgeInsets.only(right: 32),
                onPressed: () async {
                  try {
                    signal();
                  } catch (err) {
                    print('ERRRRRLOL1 $err');
                  }

                  // context.router.push(const SearchRoute());
                },
                icon: SvgPicture.asset(
                  "assets/ic_search.svg",
                  width: 32,
                  height: 30,
                )),
          ],
        ),
        const SliverToBoxAdapter(
          child: Text(
            'Favorite',
            style: TextStyle(fontSize: 20, color: DcColors.white),
            textAlign: TextAlign.center,
          ),
        ),
        const SliverPadding(padding: EdgeInsets.only(top: 10.0)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
                child: UnicornImage(
                  title: "Вася Пупкин",
                  imageUrl: '',
                  shouldHaveGradientBorder: false,
                ),
              ),
              itemCount: 5,
            ),
          ),
        ),
        BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SliverPadding(padding: EdgeInsets.zero),
              loading: (_) => const SliverToBoxAdapter(
                child: CircularProgressIndicator.adaptive(),
              ),
              loaded: (state) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                      // onTap: () => context.router.push(const MessageRoute()),
                      child: _GroupCardCard(
                        userName: _getUsername(state, index, state.currentUserId),
                        group: state.groups[index],
                      ),
                    ),
                  ),
                  childCount: state.groups.length,
                ),
              ),
              error: (_) => const SliverToBoxAdapter(
                child: Text('Error with loading chat :('),
              ),
            );
          },
        ),
      ]),
    );
  }

  String _getUsername(ChatStateLoaded state, int index, int currentUserId) {
    log(' $index ---> $currentUserId', name: 'getUsername method');
    return state.groups[index].accountGroups
            ?.firstWhere((element) => element.accountId != currentUserId)
            .account
            ?.user
            ?.userName ??
        '';
  }
}

void signal() async {
  const token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjkiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsIm5iZiI6MTY3NjY3MDQ2MywiZXhwIjoxNjc2NzQyNDYzLCJpc3MiOiJkaXNjby1hcGkiLCJhdWQiOiJodHRwOi8vbG9jYWxob3N0L0Rpc2NvLkFwaSJ9.KTXOOpHCAM4ctpCPRu1VrcLjwr_2lr4pLTDZcEcmfQY';
  //ф-ия для подключения к хабу SignalR. Для отправки пуш уведомления об оплате

  final options = HttpConnectionOptions();
  options.accessTokenBuilder = () async => token;
  options.transport = HttpTransportType.webSockets;

  final builder = HubConnectionBuilder()
    ..url = 'https://devdiscoapi.azurewebsites.net/hub/chat'
    ..logLevel = LogLevel.information
    ..httpConnectionOptions = options
    ..reconnect = true;
  final connection = builder.build();
  connection.on('sendAsync', (newList) => print('Received $newList'));
  await connection.startAsync();

  await connection.invokeAsync('SendAsync', [6, 'Say hi']);
}

class _GroupCardCard extends StatelessWidget {
  final String? photo;
  final String userName;
  final ChatGroup? group;

  const _GroupCardCard({
    Key? key,
    this.photo,
    required this.userName,
    required this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 60,
        width: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(80),
              bottomRight: Radius.circular(80),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFB21887D7), offset: Offset(2, 3), spreadRadius: 7, blurRadius: 7)
            ]),
        child: photo != null
            ? ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                child: CachedNetworkImage(
                  imageUrl: photo ?? '',
                  placeholder: (context, url) => Image.asset('assets/ic_photo.png'),
                  fit: BoxFit.fill,
                ),
              )
            : Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  child: Image.asset(
                    'assets/ic_photo.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
      ),
      const SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: GoogleFonts.aBeeZee(
              color: const Color(0xFFE6E0D2),
              fontSize: 24,
            ),
          ),
          Text(group?.messages?.length == 0 ? '' : group?.messages?.last.description ?? '',
              style: GoogleFonts.aBeeZee(
                color: const Color(0xFFE6E0D2),
                fontSize: 24,
              )),
        ],
      ),
      const Spacer(),
      Text(
          group?.messages?.length == 0
              ? ''
              : '${group?.messages?.last.createdDate ?? 'undefined date'}',
          style: GoogleFonts.aBeeZee(
            color: const Color(0xFFE6E0D2),
            fontSize: 15,
          )),
    ]);
  }
}
