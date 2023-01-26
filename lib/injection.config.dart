// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:disco_app/data/local/local_storage.dart' as _i5;
import 'package:disco_app/data/network/api/account_details_api.dart' as _i16;
import 'package:disco_app/data/network/api/auth_api.dart' as _i18;
import 'package:disco_app/data/network/api/chat_api.dart' as _i19;
import 'package:disco_app/data/network/api/follower_api.dart' as _i7;
import 'package:disco_app/data/network/api/post_api.dart' as _i9;
import 'package:disco_app/data/network/api/search_api.dart' as _i12;
import 'package:disco_app/data/network/api/stories_api.dart' as _i14;
import 'package:disco_app/data/network/network_client.dart' as _i22;
import 'package:disco_app/data/network/repositories/account_details_repository.dart'
    as _i17;
import 'package:disco_app/data/network/repositories/chat_repository.dart'
    as _i20;
import 'package:disco_app/data/network/repositories/follower_repository.dart'
    as _i8;
import 'package:disco_app/data/network/repositories/post_repository.dart'
    as _i10;
import 'package:disco_app/data/network/repositories/search_repository.dart'
    as _i13;
import 'package:disco_app/data/network/repositories/stories_repository.dart'
    as _i15;
import 'package:disco_app/data/network/repositories/user_repository.dart'
    as _i24;
import 'package:disco_app/presentation/pages/authentication/login/bloc/login_bloc.dart'
    as _i26;
import 'package:disco_app/presentation/pages/authentication/registration/bloc/registration_bloc.dart'
    as _i28;
import 'package:disco_app/presentation/pages/search/bloc/search_page_cubit.dart'
    as _i23;
import 'package:disco_app/presentation/pages/user/chat/chat_cubit/chat_cubit.dart'
    as _i25;
import 'package:disco_app/presentation/pages/user/main/bloc/like_cubit.dart'
    as _i21;
import 'package:disco_app/presentation/pages/user/main/bloc/posts_cubit.dart'
    as _i11;
import 'package:disco_app/presentation/pages/user/profile/bloc/profile_cubit.dart'
    as _i27;
import 'package:disco_app/presentation/pages/user/profile/bloc/subscribe_cubit.dart'
    as _i29;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:just_audio/just_audio.dart' as _i3;

import 'register_module.dart' as _i30;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AudioPlayer>(() => registerModule.audioPlayer());
  gh.lazySingleton<_i4.FlutterSecureStorage>(
      () => registerModule.flutterSecureStorage());
  gh.factory<_i5.SecureStorageRepository>(() => _i5.SecureStorageRepository(
      secureStorage: gh<_i4.FlutterSecureStorage>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i6.Dio>(
      () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i7.FollowerApi>(() => _i7.FollowerApi(client: gh<_i6.Dio>()));
  gh.factory<_i8.FollowerRepository>(
      () => _i8.FollowerRepository(followerApi: gh<_i7.FollowerApi>()));
  gh.factory<_i9.PostApi>(() => _i9.PostApi(dio: gh<_i6.Dio>()));
  gh.factory<_i10.PostRepository>(
      () => _i10.PostRepository(postApi: gh<_i9.PostApi>()));
  gh.factory<_i11.PostsCubit>(
      () => _i11.PostsCubit(postRepository: gh<_i10.PostRepository>()));
  gh.factory<_i12.SearchApi>(() => _i12.SearchApi(dio: gh<_i6.Dio>()));
  gh.factory<_i13.SearchRepository>(
      () => _i13.SearchRepository(searchApi: gh<_i12.SearchApi>()));
  gh.factory<_i14.StoriesApi>(() => _i14.StoriesApi(dio: gh<_i6.Dio>()));
  gh.factory<_i15.StoriesRepository>(
      () => _i15.StoriesRepository(storiesApi: gh<_i14.StoriesApi>()));
  gh.factory<_i16.AccountDetailsApi>(
      () => _i16.AccountDetailsApi(client: gh<_i6.Dio>()));
  gh.factory<_i17.AccountDetailsRepository>(() => _i17.AccountDetailsRepository(
      accountDetailsApi: gh<_i16.AccountDetailsApi>()));
  gh.factory<_i18.AuthApi>(() => _i18.AuthApi(client: gh<_i6.Dio>()));
  gh.factory<_i19.ChatApi>(() => _i19.ChatApi(client: gh<_i6.Dio>()));
  gh.factory<_i20.ChatRepository>(
      () => _i20.ChatRepository(chatApi: gh<_i19.ChatApi>()));
  gh.factory<_i21.LikeCubit>(
      () => _i21.LikeCubit(postRepository: gh<_i10.PostRepository>()));
  gh.factory<_i22.NetworkClient>(() => _i22.NetworkClient(
        dio: gh<_i6.Dio>(),
        authApi: gh<_i18.AuthApi>(),
        storage: gh<_i4.FlutterSecureStorage>(),
      ));
  gh.factory<_i23.SearchItemCubit>(() =>
      _i23.SearchItemCubit(searchRepository: gh<_i13.SearchRepository>()));
  gh.factory<_i24.UserRepository>(
      () => _i24.UserRepository(authApi: gh<_i18.AuthApi>()));
  gh.factory<_i25.ChatCubit>(
      () => _i25.ChatCubit(chatRepository: gh<_i20.ChatRepository>()));
  gh.factory<_i26.LoginBloc>(() => _i26.LoginBloc(
        userRepository: gh<_i24.UserRepository>(),
        secureStorageRepository: gh<_i5.SecureStorageRepository>(),
        dio: gh<_i6.Dio>(),
      ));
  gh.factory<_i27.ProfileCubit>(() => _i27.ProfileCubit(
        userRepository: gh<_i24.UserRepository>(),
        accountDetailsRepository: gh<_i17.AccountDetailsRepository>(),
        storage: gh<_i5.SecureStorageRepository>(),
      ));
  gh.factory<_i28.RegistrationBloc>(() => _i28.RegistrationBloc(
        userRepository: gh<_i24.UserRepository>(),
        secureStorageRepository: gh<_i5.SecureStorageRepository>(),
        dio: gh<_i6.Dio>(),
      ));
  gh.factory<_i29.SubscribeCubit>(() => _i29.SubscribeCubit(
        userRepository: gh<_i24.UserRepository>(),
        followerRepository: gh<_i8.FollowerRepository>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i30.RegisterModule {}
