import 'package:dio/dio.dart';
import 'package:flutter_bookly_app/core/utils/api_service.dart';
import 'package:flutter_bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // we created a singelton for homeRepoImpl , ApiService to avoid make many instances
  //like that in main.lib :
  //  providers: [
  //     BlocProvider(
  //       create: (context) => FeaturedBooksCubit(
  //         HomeRepoImpl(
  //           ApiService(
  //             Dio(),
  //           ),
  //         ),
  //       ),
  //     ),
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
}
