import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:disco_app/app/app_router.gr.dart';
import 'package:disco_app/injection.dart';
import 'package:disco_app/presentation/common_widgets/unicorn_image.dart';
import 'package:disco_app/presentation/pages/user/chat/chat_cubit/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signalr_core/signalr_core.dart';

import '../../../../res/colors.dart';
import 'chat_cubit/chat_cubit.dart';

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
                    connection = HubConnectionBuilder()
                        .withUrl(
                            'https://devdiscoapi.azurewebsites.net/hub/chat',
                            HttpConnectionOptions(
                              logging: (level, message) => print("CONECCTIONOPTIONS:$level: $message"),
                              accessTokenFactory: () async => await Future.value(_token),
                              logMessageContent: true,

                            )).withAutomaticReconnect()
                        .build();
                    print('lol888');
                    connection.on('sendAsync', (message) {
                      print('lol1');
                      print(message.toString());
                    });
                    connection.onreconnecting((exception) {
                      print('ONRECCONECTING: $exception');
                    });
                    connection.onreconnected((connectionId) {
                      print('ONRECCONECTINED: $connectionId');
                    });
                    print('lol8882!!!!');
                    await connection.start();
                    print('lol9');

                    final result = await connection.invoke('SendAsync', args: [6, 'Say hi']);
                    print('lol99----- $result');
                    // await connection.invoke('join', args: ['12']);



                    print('lol1000000-----');
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
                      onTap: () => context.router.push(const MessageRoute()),
                      child: _MessageCard(
                        userName: state.groups[index].name ?? '',
                        message: state.groups[index].messages?.last.description ?? '',
                        date: '${state.groups[index].messages?.last.createdDate ?? DateTime.now()}',
                      ),
                    ),
                  ),
                  childCount: 20,
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
}

class _MessageCard extends StatelessWidget {
  final String? photo;
  final String userName;
  final String message;
  final String date;

  const _MessageCard({
    Key? key,
    this.photo,
    required this.userName,
    required this.message,
    required this.date,
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
          Text(message,
              style: GoogleFonts.aBeeZee(
                color: const Color(0xFFE6E0D2),
                fontSize: 24,
              )),
        ],
      ),
      const Spacer(),
      Text(date,
          style: GoogleFonts.aBeeZee(
            color: const Color(0xFFE6E0D2),
            fontSize: 15,
          )),
    ]);
  }
}
