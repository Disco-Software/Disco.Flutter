import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)

class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: "/", page: SplashRoute.page, initial: true),
    AutoRoute(path: "/log-in", page: LoginRoute.page),
    AutoRoute(path: "/search", page: SearchRegistrationRoute.page),
    AutoRoute(path: "/registration", page: RegistrationRoute.page),
    AutoRoute(path: '/fullscreen-video', page: FullScreenVideoRoute.page),
    AutoRoute(path: '/follower-account', page: UserProfileRoute.page),
    CustomRoute(
        path: '/search_page',
        page: SearchRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 500),
    AutoRoute(path: '/story', page: StoryRoute.page),
    CustomRoute(
        usesPathAsKey: true,
        path: '/story_anim',
        page: AnimatedStoryRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn),
    AutoRoute(path: '/itemId', page: SavedItemsRoute.page),
    AutoRoute(path: '/home', page: HomeRoute.page, children: [
      AutoRoute(path: "feed", page: MainRoute.page),
      AutoRoute(path: 'saved', page: SavedItemsRoute.page),
      AutoRoute(path: 'addPost', page: AddPostRoute.page, children: [
        AutoRoute(path: '', page: AddPostRoute.page),
        AutoRoute(path: 'record-audio', page: RecordAudioRoute.page),
        AutoRoute(path: 'select-audio', page: SelectFilesRoute.page),
      ]),
      AutoRoute(path: "chat", page: ChatRoute.page),
      AutoRoute(path: "profile", page: ProfileRoute.page),
    ]),
  ];
}

Widget searchPageTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}
