// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:auto_route/empty_router_widgets.dart' as _i14;
import 'package:flutter/material.dart' as _i21;
import 'package:video_player/video_player.dart' as _i22;

import '../presentation/pages/authentication/login/login_page.dart' as _i2;
import '../presentation/pages/authentication/registration/registration.dart'
    as _i4;
import '../presentation/pages/authentication/search_registration/search_registration_page.dart'
    as _i3;
import '../presentation/pages/search/search_page.dart' as _i8;
import '../presentation/pages/start/splash_page.dart' as _i1;
import '../presentation/pages/user/add_post/add_post_page.dart' as _i17;
import '../presentation/pages/user/add_post/record_audio_page.dart' as _i18;
import '../presentation/pages/user/add_post/select_files_page.dart' as _i19;
import '../presentation/pages/user/add_post/widgets/fullscreen_video.dart'
    as _i5;
import '../presentation/pages/user/chat/chat_page.dart' as _i15;
import '../presentation/pages/user/chat/message_page.dart' as _i7;
import '../presentation/pages/user/home_page.dart' as _i11;
import '../presentation/pages/user/main/main_page.dart' as _i12;
import '../presentation/pages/user/main/pages/stories/story_page.dart' as _i9;
import '../presentation/pages/user/profile/profile_page.dart' as _i16;
import '../presentation/pages/user/profile/user_profile_page.dart' as _i6;
import '../presentation/pages/user/saved/saved.dart' as _i13;
import '../presentation/pages/user/saved/saved_item_page/saved_item.dart'
    as _i10;

class AppRouter extends _i20.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i2.LoginPage()),
      );
    },
    SearchRegistrationRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchRegistrationPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationPage(),
      );
    },
    FullScreenVideoRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenVideoRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.FullScreenVideoPage(
          key: args.key,
          source: args.source,
          controller: args.controller,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(
            child: _i6.UserProfilePage(
          key: args.key,
          userId: args.userId,
        )),
      );
    },
    MessageRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MessagePage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i8.SearchPage()),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StoryRoute.name: (routeData) {
      final args = routeData.argsAs<StoryRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.StoryPage(
          index: args.index,
          totalLength: args.totalLength,
          key: args.key,
        ),
      );
    },
    AnimatedStoryRoute.name: (routeData) {
      final args = routeData.argsAs<AnimatedStoryRouteArgs>();
      return _i20.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.StoryPage(
          index: args.index,
          totalLength: args.totalLength,
          key: args.key,
        ),
        transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SavedItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SavedItemRouteArgs>(
          orElse: () =>
              SavedItemRouteArgs(itemId: pathParams.getInt('itemId')));
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.SavedItem(
          key: args.key,
          itemId: args.itemId,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.HomePage(
          key: args.key,
          shouldLoadData: args.shouldLoadData,
        ),
      );
    },
    FeedRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.MainPage(),
      );
    },
    SavedItemsRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SavedItemsPage(),
      );
    },
    AddPostRouter.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.EmptyRouterPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ChatPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i20.WrappedRoute(child: const _i16.ProfilePage()),
      );
    },
    AddPostRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.AddPostPage(),
      );
    },
    RecordAudioRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.RecordAudioPage(),
      );
    },
    SelectFilesRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.SelectFilesPage(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i20.RouteConfig(
          LoginRoute.name,
          path: '/log-in',
        ),
        _i20.RouteConfig(
          SearchRegistrationRoute.name,
          path: '/search',
        ),
        _i20.RouteConfig(
          RegistrationRoute.name,
          path: '/registration',
        ),
        _i20.RouteConfig(
          FullScreenVideoRoute.name,
          path: '/fullscreen-video',
        ),
        _i20.RouteConfig(
          UserProfileRoute.name,
          path: '/follower-account',
        ),
        _i20.RouteConfig(
          MessageRoute.name,
          path: '/message',
        ),
        _i20.RouteConfig(
          SearchRoute.name,
          path: '/search_page',
        ),
        _i20.RouteConfig(
          StoryRoute.name,
          path: '/story',
        ),
        _i20.RouteConfig(
          AnimatedStoryRoute.name,
          path: '/story_anim',
        ),
        _i20.RouteConfig(
          SavedItemRoute.name,
          path: ':itemId',
        ),
        _i20.RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            _i20.RouteConfig(
              FeedRoute.name,
              path: 'feed',
              parent: HomeRoute.name,
            ),
            _i20.RouteConfig(
              SavedItemsRoute.name,
              path: 'saved',
              parent: HomeRoute.name,
            ),
            _i20.RouteConfig(
              AddPostRouter.name,
              path: 'addPost',
              parent: HomeRoute.name,
              children: [
                _i20.RouteConfig(
                  AddPostRoute.name,
                  path: '',
                  parent: AddPostRouter.name,
                ),
                _i20.RouteConfig(
                  RecordAudioRoute.name,
                  path: 'record-audio',
                  parent: AddPostRouter.name,
                ),
                _i20.RouteConfig(
                  SelectFilesRoute.name,
                  path: 'select-audio',
                  parent: AddPostRouter.name,
                ),
              ],
            ),
            _i20.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: HomeRoute.name,
            ),
            _i20.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: HomeRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/log-in',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SearchRegistrationPage]
class SearchRegistrationRoute extends _i20.PageRouteInfo<void> {
  const SearchRegistrationRoute()
      : super(
          SearchRegistrationRoute.name,
          path: '/search',
        );

  static const String name = 'SearchRegistrationRoute';
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i20.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: '/registration',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i5.FullScreenVideoPage]
class FullScreenVideoRoute
    extends _i20.PageRouteInfo<FullScreenVideoRouteArgs> {
  FullScreenVideoRoute({
    _i21.Key? key,
    required String source,
    required _i22.VideoPlayerController controller,
  }) : super(
          FullScreenVideoRoute.name,
          path: '/fullscreen-video',
          args: FullScreenVideoRouteArgs(
            key: key,
            source: source,
            controller: controller,
          ),
        );

  static const String name = 'FullScreenVideoRoute';
}

class FullScreenVideoRouteArgs {
  const FullScreenVideoRouteArgs({
    this.key,
    required this.source,
    required this.controller,
  });

  final _i21.Key? key;

  final String source;

  final _i22.VideoPlayerController controller;

  @override
  String toString() {
    return 'FullScreenVideoRouteArgs{key: $key, source: $source, controller: $controller}';
  }
}

/// generated route for
/// [_i6.UserProfilePage]
class UserProfileRoute extends _i20.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i21.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: '/follower-account',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i21.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i7.MessagePage]
class MessageRoute extends _i20.PageRouteInfo<void> {
  const MessageRoute()
      : super(
          MessageRoute.name,
          path: '/message',
        );

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i8.SearchPage]
class SearchRoute extends _i20.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search_page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i9.StoryPage]
class StoryRoute extends _i20.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    required int index,
    required int totalLength,
    _i21.Key? key,
  }) : super(
          StoryRoute.name,
          path: '/story',
          args: StoryRouteArgs(
            index: index,
            totalLength: totalLength,
            key: key,
          ),
        );

  static const String name = 'StoryRoute';
}

class StoryRouteArgs {
  const StoryRouteArgs({
    required this.index,
    required this.totalLength,
    this.key,
  });

  final int index;

  final int totalLength;

  final _i21.Key? key;

  @override
  String toString() {
    return 'StoryRouteArgs{index: $index, totalLength: $totalLength, key: $key}';
  }
}

/// generated route for
/// [_i9.StoryPage]
class AnimatedStoryRoute extends _i20.PageRouteInfo<AnimatedStoryRouteArgs> {
  AnimatedStoryRoute({
    required int index,
    required int totalLength,
    _i21.Key? key,
  }) : super(
          AnimatedStoryRoute.name,
          path: '/story_anim',
          args: AnimatedStoryRouteArgs(
            index: index,
            totalLength: totalLength,
            key: key,
          ),
        );

  static const String name = 'AnimatedStoryRoute';
}

class AnimatedStoryRouteArgs {
  const AnimatedStoryRouteArgs({
    required this.index,
    required this.totalLength,
    this.key,
  });

  final int index;

  final int totalLength;

  final _i21.Key? key;

  @override
  String toString() {
    return 'AnimatedStoryRouteArgs{index: $index, totalLength: $totalLength, key: $key}';
  }
}

/// generated route for
/// [_i10.SavedItem]
class SavedItemRoute extends _i20.PageRouteInfo<SavedItemRouteArgs> {
  SavedItemRoute({
    _i21.Key? key,
    required int itemId,
  }) : super(
          SavedItemRoute.name,
          path: ':itemId',
          args: SavedItemRouteArgs(
            key: key,
            itemId: itemId,
          ),
          rawPathParams: {'itemId': itemId},
        );

  static const String name = 'SavedItemRoute';
}

class SavedItemRouteArgs {
  const SavedItemRouteArgs({
    this.key,
    required this.itemId,
  });

  final _i21.Key? key;

  final int itemId;

  @override
  String toString() {
    return 'SavedItemRouteArgs{key: $key, itemId: $itemId}';
  }
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i20.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i21.Key? key,
    bool shouldLoadData = true,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          path: '/home',
          args: HomeRouteArgs(
            key: key,
            shouldLoadData: shouldLoadData,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.shouldLoadData = true,
  });

  final _i21.Key? key;

  final bool shouldLoadData;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, shouldLoadData: $shouldLoadData}';
  }
}

/// generated route for
/// [_i12.MainPage]
class FeedRoute extends _i20.PageRouteInfo<void> {
  const FeedRoute()
      : super(
          FeedRoute.name,
          path: 'feed',
        );

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i13.SavedItemsPage]
class SavedItemsRoute extends _i20.PageRouteInfo<void> {
  const SavedItemsRoute()
      : super(
          SavedItemsRoute.name,
          path: 'saved',
        );

  static const String name = 'SavedItemsRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class AddPostRouter extends _i20.PageRouteInfo<void> {
  const AddPostRouter({List<_i20.PageRouteInfo>? children})
      : super(
          AddPostRouter.name,
          path: 'addPost',
          initialChildren: children,
        );

  static const String name = 'AddPostRouter';
}

/// generated route for
/// [_i15.ChatPage]
class ChatRoute extends _i20.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i16.ProfilePage]
class ProfileRoute extends _i20.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i17.AddPostPage]
class AddPostRoute extends _i20.PageRouteInfo<void> {
  const AddPostRoute()
      : super(
          AddPostRoute.name,
          path: '',
        );

  static const String name = 'AddPostRoute';
}

/// generated route for
/// [_i18.RecordAudioPage]
class RecordAudioRoute extends _i20.PageRouteInfo<void> {
  const RecordAudioRoute()
      : super(
          RecordAudioRoute.name,
          path: 'record-audio',
        );

  static const String name = 'RecordAudioRoute';
}

/// generated route for
/// [_i19.SelectFilesPage]
class SelectFilesRoute extends _i20.PageRouteInfo<void> {
  const SelectFilesRoute()
      : super(
          SelectFilesRoute.name,
          path: 'select-audio',
        );

  static const String name = 'SelectFilesRoute';
}
