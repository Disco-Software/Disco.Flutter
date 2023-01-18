import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:disco_app/app/app_router.gr.dart';
import 'package:disco_app/presentation/common_widgets/unicorn_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

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
                onPressed: () {
                  context.router.push(const SearchRoute());
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: GestureDetector(
                onTap: () => context.router.push(const MessageRoute()),
                child: const _MessageCard(
                    userName: 'Lol', message: 'Say hi to ..,', date: 'Yesterday'),
              ),
            ),
            childCount: 20,
          ),
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
