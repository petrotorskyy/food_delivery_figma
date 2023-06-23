import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/data/remote/data_sources/users_remote_data_source.dart';
import '../features/auth/data/repositories/auth_repo_impl.dart';
import '../features/auth/domain/use_cases/login_use_case.dart';
import '../features/auth/presentation/signin/bloc/signin_bloc.dart';
import 'routing/app_routers.dart';

class Injection {
  static final getIt = GetIt.instance;

  static setup() async {
    //openDatabase('path');
    // final LocalDataSourceInitializer localDataSourceInitializer =
    //     LocalDataSourceInitializer();
    // await localDataSourceInitializer.openDatabaseConnection();
    //  getIt.registerSingleton<Database>(localDataSourceInitializer.database);
    getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
    final firebaseAuth = getIt.get<FirebaseAuth>();
    getIt.registerSingleton<AppRoutes>(AppRoutes(firebaseAuth));

    getIt.registerSingleton<AuthRepoImpl>(
      AuthRepoImpl(
        UsersRemoteDataSource(getIt.get<FirebaseAuth>()),
        getIt.get<FirebaseAuth>(),
      ),
    );

    getIt.registerFactory<LoginBloc>(
      () => LoginBloc(
        LoginUseCase(
          getIt.get<AuthRepoImpl>(),
        ),
      ),
    );
  }
}
