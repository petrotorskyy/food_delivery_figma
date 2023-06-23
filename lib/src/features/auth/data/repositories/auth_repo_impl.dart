import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/value_objects/email_value_object.dart';
import '../../../../core/value_objects/password_value_object.dart';
import '../../domain/use_cases/register_use_case.dart';
import '/src/features/auth/domain/repositories/auth_repo.dart';

import '../../../../core/domain/entities/user_entity.dart';
import '../../../../core/failures/failures.dart';
import '../../domain/failures.dart';
import '../exceptions.dart';
import '../remote/data_sources/users_remote_data_source.dart';

class AuthRepoImpl implements AuthRepo {
  final UsersRemoteDataSource usersRemoteDataSource;
  final FirebaseAuth firebaseAuth;

  AuthRepoImpl(this.usersRemoteDataSource, this.firebaseAuth);

  @override
  UserEntity getLoggedUser() {
    final user = usersRemoteDataSource.getLoggedUser();
    return UserEntity(
      id: user.uid,
      name: user.displayName!,
      profilePicture: user.photoURL ?? '',
      email: user.email!,
    );
  }

  @override
  Future<Either<AuthFailure, UserEntity>> login(
      EmailAddress emailAddress, Password password) async {
    try {
      final result = await usersRemoteDataSource.login(
          emailAddress.getOrCrash(), password.getOrCrash());
      return const Right(
          UserEntity(id: '', name: '', email: '', profilePicture: ''));
    } on AuthException catch (e) {
      if (e is InvalidEmailException) {
        return Left(InvalidEmailFailure());
      } else if (e is WrongPasswordException) {
        return Left(WrongPasswordFailure());
      } else if (e is UserNotFoundException) {
        return Left(UserNotFoundFailure());
      } else if (e is UserDisabledException) {
        return Left(UserDisabledFailure());
      } else if (e is TooManyRequestException) {
        return Left(TooManyRequestFailure());
      } else {
        return Left(UnexpectedFailure());
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> getUserById(String id) async {
    final result = await usersRemoteDataSource.getOne(id);
    return UserEntity(
      id: result!.id,
      name: result.name,
      profilePicture: result.profilePicture,
      email: result.email,
    );
  }

  @override
  Future<Either<AuthFailure, Unit>> register(
      RegisterParams registerParams) async {
    try {
      final result = await usersRemoteDataSource.register(
          registerParams.fullName,
          registerParams.emailAddress.getOrCrash(),
          registerParams.password.getOrCrash());

/*
      await authRemoteDataSource.add(UserRemoteDataModel(
        id: result!.uid,
        name: registerParams.fullName,
        email: registerParams.emailAddress.getOrCrash(),
        profilePicture: Constants.defaultAvatar,
      ));
*/

      return right(unit);
    } on AuthException catch (e) {
      if (e is EmailAlreadyInUseException) {
        return Left((EmailAlreadyInUseFailure()));
      } else if (e is InvalidEmailException) {
        return Left(InvalidEmailFailure());
      } else if (e is WeakPasswordException) {
        return Left(WeakPasswordFailure());
      } else {
        return Left(UnexpectedFailure());
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() {
    return firebaseAuth.signOut();
  }
}
