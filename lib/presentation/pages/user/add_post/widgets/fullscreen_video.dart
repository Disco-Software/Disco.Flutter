import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'disco_video_player.dart';

@RoutePage()
class FullScreenVideoPage extends StatelessWidget {
  final String source;
  final VideoPlayerController controller;

  const FullScreenVideoPage({
    Key? key,
    required this.source,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DiscoVideoPlayer(
        controller: controller,
        source: source,
        isFullscreenMode: true,
      ),
    );
  }
}
