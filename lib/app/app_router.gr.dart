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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:auto_route/empty_router_widgets.dart' as _i13;
import 'package:flutter/material.dart' as _i20;
import 'package:video_player/video_player.dart' as _i21;

import '../presentation/pages/authentication/login/login_page.dart' as _i2;
import '../presentation/pages/authentication/registration/registration.dart'
    as _i4;
import '../presentation/pages/authentication/search_registration/search_registration_page.dart'
    as _i3;
import '../presentation/pages/search/search_page.dart' as _i7;
import '../presentation/pages/start/splash_page.dart' as _i1;
import '../presentation/pages/user/add_post/add_post_page.dart' as _i16;
import '../presentation/pages/user/add_post/record_audio_page.dart' as _i17;
import '../presentation/pages/user/add_post/select_files_page.dart' as _i18;
import '../presentation/pages/user/add_post/widgets/fullscreen_video.dart'
    as _i5;
import '../presentation/pages/user/chat/chat_page.dart' as _i14;
import '../presentation/pages/user/home_page.dart' as _i10;
import '../presentation/pages/user/main/main_page.dart' as _i11;
import '../presentation/pages/user/main/pages/stories/story_page.dart' as _i8;
import '../presentation/pages/user/profile/profile_page.dart' as _i15;
import '../presentation/pages/user/profile/user_profile_page.dart' as _i6;
import '../presentation/pages/user/saved/saved.dart' as _i12;
import '../presentation/pages/user/saved/saved_item_page/saved_item.dart'
    as _i9;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i2.LoginPage()),
      );
    },
    SearchRegistrationRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SearchRegistrationPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationPage(),
      );
    },
    FullScreenVideoRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenVideoRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
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
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(
            child: _i6.UserProfilePage(
          key: args.key,
          userId: args.userId,
        )),
      );
    },
    SearchRoute.name: (routeData) {
      return _i19.CustomPage<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i7.SearchPage()),
        transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 800,
        reverseDurationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StoryRoute.name: (routeData) {
      final args = routeData.argsAs<StoryRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.StoryPage(
          index: args.index,
          totalLength: args.totalLength,
          key: args.key,
        ),
      );
    },
    AnimatedStoryRoute.name: (routeData) {
      final args = routeData.argsAs<AnimatedStoryRouteArgs>();
      return _i19.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.StoryPage(
          index: args.index,
          totalLength: args.totalLength,
          key: args.key,
        ),
        transitionsBuilder: _i19.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SavedItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SavedItemRouteArgs>(
          orElse: () =>
              SavedItemRouteArgs(itemId: pathParams.getInt('itemId')));
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.SavedItem(
          key: args.key,
          itemId: args.itemId,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.HomePage(
          key: args.key,
          shouldLoadData: args.shouldLoadData,
        ),
      );
    },
    FeedRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.MainPage(),
      );
    },
    SavedItemsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SavedItemsPage(),
      );
    },
    AddPostRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(child: const _i14.ChatPage()),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i19.WrappedRoute(
            child: _i15.ProfilePage(
          key: args.key,
          mainKey: args.mainKey,
        )),
      );
    },
    AddPostRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.AddPostPage(),
      );
    },
    RecordAudioRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.RecordAudioPage(),
      );
    },
    SelectFilesRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.SelectFilesPage(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i19.RouteConfig(
          LoginRoute.name,
          path: '/log-in',
        ),
        _i19.RouteConfig(
          SearchRegistrationRoute.name,
          path: '/search',
        ),
        _i19.RouteConfig(
          RegistrationRoute.name,
          path: '/registration',
        ),
        _i19.RouteConfig(
          FullScreenVideoRoute.name,
          path: '/fullscreen-video',
        ),
        _i19.RouteConfig(
          UserProfileRoute.name,
          path: '/follower-account',
        ),
        _i19.RouteConfig(
          SearchRoute.name,
          path: '/search_page',
        ),
        _i19.RouteConfig(
          StoryRoute.name,
          path: '/story',
        ),
        _i19.RouteConfig(
          AnimatedStoryRoute.name,
          path: '/story_anim',
        ),
        _i19.RouteConfig(
          SavedItemRoute.name,
          path: ':itemId',
        ),
        _i19.RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            _i19.RouteConfig(
              FeedRoute.name,
              path: 'feed',
              parent: HomeRoute.name,
            ),
            _i19.RouteConfig(
              SavedItemsRoute.name,
              path: 'saved',
              parent: HomeRoute.name,
            ),
            _i19.RouteConfig(
              AddPostRouter.name,
              path: 'addPost',
              parent: HomeRoute.name,
              children: [
                _i19.RouteConfig(
                  AddPostRoute.name,
                  path: '',
                  parent: AddPostRouter.name,
                ),
                _i19.RouteConfig(
                  RecordAudioRoute.name,
                  path: 'record-audio',
                  parent: AddPostRouter.name,
                ),
                _i19.RouteConfig(
                  SelectFilesRoute.name,
                  path: 'select-audio',
                  parent: AddPostRouter.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              ChatRoute.name,
              path: 'chat',
              parent: HomeRoute.name,
            ),
            _i19.RouteConfig(
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
class SplashRoute extends _i19.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/log-in',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.SearchRegistrationPage]
class SearchRegistrationRoute extends _i19.PageRouteInfo<void> {
  const SearchRegistrationRoute()
      : super(
          SearchRegistrationRoute.name,
          path: '/search',
        );

  static const String name = 'SearchRegistrationRoute';
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i19.PageRouteInfo<void> {
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
    extends _i19.PageRouteInfo<FullScreenVideoRouteArgs> {
  FullScreenVideoRoute({
    _i20.Key? key,
    required String source,
    required _i21.VideoPlayerController controller,
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

  final _i20.Key? key;

  final String source;

  final _i21.VideoPlayerController controller;

  @override
  String toString() {
    return 'FullScreenVideoRouteArgs{key: $key, source: $source, controller: $controller}';
  }
}

/// generated route for
/// [_i6.UserProfilePage]
class UserProfileRoute extends _i19.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i19.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search_page',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i8.StoryPage]
class StoryRoute extends _i19.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    required int index,
    required int totalLength,
    _i20.Key? key,
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

  final _i20.Key? key;

  @override
  String toString() {
    return 'StoryRouteArgs{index: $index, totalLength: $totalLength, key: $key}';
  }
}

/// generated route for
/// [_i8.StoryPage]
class AnimatedStoryRoute extends _i19.PageRouteInfo<AnimatedStoryRouteArgs> {
  AnimatedStoryRoute({
    required int index,
    required int totalLength,
    _i20.Key? key,
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

  final _i20.Key? key;

  @override
  String toString() {
    return 'AnimatedStoryRouteArgs{index: $index, totalLength: $totalLength, key: $key}';
  }
}

/// generated route for
/// [_i9.SavedItem]
class SavedItemRoute extends _i19.PageRouteInfo<SavedItemRouteArgs> {
  SavedItemRoute({
    _i20.Key? key,
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

  final _i20.Key? key;

  final int itemId;

  @override
  String toString() {
    return 'SavedItemRouteArgs{key: $key, itemId: $itemId}';
  }
}

/// generated route for
/// [_i10.HomePage]
class HomeRoute extends _i19.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i20.Key? key,
    bool shouldLoadData = true,
    List<_i19.PageRouteInfo>? children,
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

  final _i20.Key? key;

  final bool shouldLoadData;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, shouldLoadData: $shouldLoadData}';
  }
}

/// generated route for
/// [_i11.MainPage]
class FeedRoute extends _i19.PageRouteInfo<void> {
  const FeedRoute()
      : super(
          FeedRoute.name,
          path: 'feed',
        );

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i12.SavedItemsPage]
class SavedItemsRoute extends _i19.PageRouteInfo<void> {
  const SavedItemsRoute()
      : super(
          SavedItemsRoute.name,
          path: 'saved',
        );

  static const String name = 'SavedItemsRoute';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class AddPostRouter extends _i19.PageRouteInfo<void> {
  const AddPostRouter({List<_i19.PageRouteInfo>? children})
      : super(
          AddPostRouter.name,
          path: 'addPost',
          initialChildren: children,
        );

  static const String name = 'AddPostRouter';
}

/// generated route for
/// [_i14.ChatPage]
class ChatRoute extends _i19.PageRouteInfo<void> {
  const ChatRoute()
      : super(
          ChatRoute.name,
          path: 'chat',
        );

  static const String name = 'ChatRoute';
}

/// generated route for
/// [_i15.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i20.Key? key,
    required _i20.GlobalKey<_i20.ScaffoldState> mainKey,
  }) : super(
          ProfileRoute.name,
          path: 'profile',
          args: ProfileRouteArgs(
            key: key,
            mainKey: mainKey,
          ),
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.mainKey,
  });

  final _i20.Key? key;

  final _i20.GlobalKey<_i20.ScaffoldState> mainKey;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, mainKey: $mainKey}';
  }
}

/// generated route for
/// [_i16.AddPostPage]
class AddPostRoute extends _i19.PageRouteInfo<void> {
  const AddPostRoute()
      : super(
          AddPostRoute.name,
          path: '',
        );

  static const String name = 'AddPostRoute';
}

/// generated route for
/// [_i17.RecordAudioPage]
class RecordAudioRoute extends _i19.PageRouteInfo<void> {
  const RecordAudioRoute()
      : super(
          RecordAudioRoute.name,
          path: 'record-audio',
        );

  static const String name = 'RecordAudioRoute';
}

/// generated route for
/// [_i18.SelectFilesPage]
class SelectFilesRoute extends _i19.PageRouteInfo<void> {
  const SelectFilesRoute()
      : super(
          SelectFilesRoute.name,
          path: 'select-audio',
        );

  static const String name = 'SelectFilesRoute';
}
