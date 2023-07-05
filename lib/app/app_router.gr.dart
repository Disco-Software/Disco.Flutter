// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:disco_app/presentation/pages/authentication/login/login_page.dart'
    as _i17;
import 'package:disco_app/presentation/pages/authentication/registration/registration.dart'
    as _i15;
import 'package:disco_app/presentation/pages/authentication/search_registration/search_registration_page.dart'
    as _i16;
import 'package:disco_app/presentation/pages/search/search_page.dart' as _i14;
import 'package:disco_app/presentation/pages/start/splash_page.dart' as _i1;
import 'package:disco_app/presentation/pages/user/add_post/add_post_page.dart'
    as _i6;
import 'package:disco_app/presentation/pages/user/add_post/record_audio_page.dart'
    as _i7;
import 'package:disco_app/presentation/pages/user/add_post/select_files_page.dart'
    as _i5;
import 'package:disco_app/presentation/pages/user/add_post/widgets/fullscreen_video.dart'
    as _i8;
import 'package:disco_app/presentation/pages/user/chat/chat_page.dart' as _i4;
import 'package:disco_app/presentation/pages/user/home_page.dart' as _i11;
import 'package:disco_app/presentation/pages/user/main/main_page.dart' as _i12;
import 'package:disco_app/presentation/pages/user/main/pages/stories/story_page.dart'
    as _i13;
import 'package:disco_app/presentation/pages/user/profile/profile_page.dart'
    as _i10;
import 'package:disco_app/presentation/pages/user/profile/user_profile_page.dart'
    as _i9;
import 'package:disco_app/presentation/pages/user/saved/saved.dart' as _i2;
import 'package:disco_app/presentation/pages/user/saved/saved_item_page/saved_item.dart'
    as _i3;
import 'package:flutter/cupertino.dart' as _i20;
import 'package:flutter/material.dart' as _i19;
import 'package:video_player/video_player.dart' as _i21;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SavedItemsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SavedItemsPage(),
      );
    },
    SavedItem.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SavedItemArgs>(
          orElse: () => SavedItemArgs(itemId: pathParams.getInt('itemId')));
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SavedItem(
          key: args.key,
          itemId: args.itemId,
        ),
      );
    },
    ChatRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i4.ChatPage()),
      );
    },
    SelectFilesRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SelectFilesPage(),
      );
    },
    AddPostRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.AddPostPage(),
      );
    },
    RecordAudioRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RecordAudioPage(),
      );
    },
    FullScreenVideoRoute.name: (routeData) {
      final args = routeData.argsAs<FullScreenVideoRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.FullScreenVideoPage(
          key: args.key,
          source: args.source,
          controller: args.controller,
        ),
      );
    },
    UserProfileRoute.name: (routeData) {
      final args = routeData.argsAs<UserProfileRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(
            child: _i9.UserProfilePage(
          key: args.key,
          userId: args.userId,
        )),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(
            child: _i10.ProfilePage(
          key: args.key,
          mainKey: args.mainKey,
        )),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.HomePage(
          key: args.key,
          shouldLoadData: args.shouldLoadData,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MainPage(),
      );
    },
    StoryRoute.name: (routeData) {
      final args = routeData.argsAs<StoryRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.StoryPage(
          key: args.key,
          index: args.index,
          totalLength: args.totalLength,
        ),
      );
    },
    AnimatedStoryRoute.name: (routeData) {
      final args = routeData.argsAs<AnimatedStoryRouteArgs>();
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.AnimatedStoryPage(
          key: args.key,
          index: args.index,
          totalLength: args.totalLength,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i14.SearchPage()),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RegistrationPage(),
      );
    },
    SearchRegistrationRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SearchRegistrationPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i17.LoginPage()),
      );
    },
  };
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SavedItemsPage]
class SavedItemsRoute extends _i18.PageRouteInfo<void> {
  const SavedItemsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SavedItemsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedItemsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SavedItem]
class SavedItem extends _i18.PageRouteInfo<SavedItemArgs> {
  SavedItem({
    _i19.Key? key,
    required int itemId,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          SavedItem.name,
          args: SavedItemArgs(
            key: key,
            itemId: itemId,
          ),
          rawPathParams: {'itemId': itemId},
          initialChildren: children,
        );

  static const String name = 'SavedItem';

  static const _i18.PageInfo<SavedItemArgs> page =
      _i18.PageInfo<SavedItemArgs>(name);
}

class SavedItemArgs {
  const SavedItemArgs({
    this.key,
    required this.itemId,
  });

  final _i19.Key? key;

  final int itemId;

  @override
  String toString() {
    return 'SavedItemArgs{key: $key, itemId: $itemId}';
  }
}

/// generated route for
/// [_i4.ChatPage]
class ChatRoute extends _i18.PageRouteInfo<void> {
  const ChatRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SelectFilesPage]
class SelectFilesRoute extends _i18.PageRouteInfo<void> {
  const SelectFilesRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SelectFilesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectFilesRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AddPostPage]
class AddPostRoute extends _i18.PageRouteInfo<void> {
  const AddPostRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AddPostRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddPostRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RecordAudioPage]
class RecordAudioRoute extends _i18.PageRouteInfo<void> {
  const RecordAudioRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RecordAudioRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecordAudioRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.FullScreenVideoPage]
class FullScreenVideoRoute
    extends _i18.PageRouteInfo<FullScreenVideoRouteArgs> {
  FullScreenVideoRoute({
    _i20.Key? key,
    required String source,
    required _i21.VideoPlayerController controller,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          FullScreenVideoRoute.name,
          args: FullScreenVideoRouteArgs(
            key: key,
            source: source,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FullScreenVideoRoute';

  static const _i18.PageInfo<FullScreenVideoRouteArgs> page =
      _i18.PageInfo<FullScreenVideoRouteArgs>(name);
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
/// [_i9.UserProfilePage]
class UserProfileRoute extends _i18.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i20.Key? key,
    required int userId,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          UserProfileRoute.name,
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i18.PageInfo<UserProfileRouteArgs> page =
      _i18.PageInfo<UserProfileRouteArgs>(name);
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
/// [_i10.ProfilePage]
class ProfileRoute extends _i18.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i20.Key? key,
    required _i20.GlobalKey<_i19.ScaffoldState> mainKey,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            mainKey: mainKey,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i18.PageInfo<ProfileRouteArgs> page =
      _i18.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.mainKey,
  });

  final _i20.Key? key;

  final _i20.GlobalKey<_i19.ScaffoldState> mainKey;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, mainKey: $mainKey}';
  }
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i18.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i19.Key? key,
    bool shouldLoadData = true,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            shouldLoadData: shouldLoadData,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<HomeRouteArgs> page =
      _i18.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.shouldLoadData = true,
  });

  final _i19.Key? key;

  final bool shouldLoadData;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, shouldLoadData: $shouldLoadData}';
  }
}

/// generated route for
/// [_i12.MainPage]
class MainRoute extends _i18.PageRouteInfo<void> {
  const MainRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.StoryPage]
class StoryRoute extends _i18.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    _i20.Key? key,
    required int index,
    required int totalLength,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          StoryRoute.name,
          args: StoryRouteArgs(
            key: key,
            index: index,
            totalLength: totalLength,
          ),
          initialChildren: children,
        );

  static const String name = 'StoryRoute';

  static const _i18.PageInfo<StoryRouteArgs> page =
      _i18.PageInfo<StoryRouteArgs>(name);
}

class StoryRouteArgs {
  const StoryRouteArgs({
    this.key,
    required this.index,
    required this.totalLength,
  });

  final _i20.Key? key;

  final int index;

  final int totalLength;

  @override
  String toString() {
    return 'StoryRouteArgs{key: $key, index: $index, totalLength: $totalLength}';
  }
}

/// generated route for
/// [_i13.AnimatedStoryPage]
class AnimatedStoryRoute extends _i18.PageRouteInfo<AnimatedStoryRouteArgs> {
  AnimatedStoryRoute({
    _i20.Key? key,
    required int index,
    required int totalLength,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          AnimatedStoryRoute.name,
          args: AnimatedStoryRouteArgs(
            key: key,
            index: index,
            totalLength: totalLength,
          ),
          initialChildren: children,
        );

  static const String name = 'AnimatedStoryRoute';

  static const _i18.PageInfo<AnimatedStoryRouteArgs> page =
      _i18.PageInfo<AnimatedStoryRouteArgs>(name);
}

class AnimatedStoryRouteArgs {
  const AnimatedStoryRouteArgs({
    this.key,
    required this.index,
    required this.totalLength,
  });

  final _i20.Key? key;

  final int index;

  final int totalLength;

  @override
  String toString() {
    return 'AnimatedStoryRouteArgs{key: $key, index: $index, totalLength: $totalLength}';
  }
}

/// generated route for
/// [_i14.SearchPage]
class SearchRoute extends _i18.PageRouteInfo<void> {
  const SearchRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RegistrationPage]
class RegistrationRoute extends _i18.PageRouteInfo<void> {
  const RegistrationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SearchRegistrationPage]
class SearchRegistrationRoute extends _i18.PageRouteInfo<void> {
  const SearchRegistrationRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SearchRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRegistrationRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
